//
//  ContentView.swift
//  SleepPulse
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State private var firebaseStatus = "Checking Firebase..."
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "moon.stars.fill")
                .font(.system(size: 80))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.blue, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            Text("SleepPulse")
                .font(.system(size: 36, weight: .bold))
            
            Text("AI-Powered Sleep & Heart Insights")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer()
                .frame(height: 40)
            
            VStack(spacing: 10) {
                Image(systemName: firebaseStatus.contains("✅") ? "checkmark.circle.fill" : "hourglass")
                    .font(.system(size: 40))
                    .foregroundColor(firebaseStatus.contains("✅") ? .green : .orange)
                
                Text(firebaseStatus)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text("Xcode Project Created")
                }
                
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text("Firebase SDK Installed")
                }
                
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text("HealthKit Capability Added")
                }
                
                HStack {
                    Image(systemName: firebaseStatus.contains("✅") ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(firebaseStatus.contains("✅") ? .green : .gray)
                    Text("Firebase Connected")
                }
            }
            .font(.footnote)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue.opacity(0.1))
            .cornerRadius(12)
            
            Text("Day 1/70 Progress 🚀")
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.top, 8)
        }
        .padding()
        .onAppear {
            checkFirebaseConnection()
        }
    }
    
    private func checkFirebaseConnection() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if Auth.auth().app != nil {
                firebaseStatus = "✅ Firebase Connected!\nReady to build!"
            } else {
                firebaseStatus = "❌ Firebase Not Connected\nCheck GoogleService-Info.plist"
            }
        }
    }
}

#Preview {
    ContentView()
}

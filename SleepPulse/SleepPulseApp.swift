//
//  SleepPulseApp.swift
//  SleepPulse
//
//  Created on 11/16/2025.
//

import SwiftUI
import FirebaseCore

// Add AppDelegate to fix Firebase warnings
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("🔥 Firebase configured successfully")
        return true
    }
}

@main
struct SleepPulseApp: App {
    // Register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

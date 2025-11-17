//
//  SleepPulseApp.swift
//  SleepPulse
//
//  Created by Ram Dwarkanath on 11/17/25.
//

//
//  SleepPulseApp.swift
//  SleepPulse
//

import SwiftUI
import FirebaseCore

@main
struct SleepPulseApp: App {
    
    init() {
        FirebaseApp.configure()
        print("🔥 Firebase configured successfully")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

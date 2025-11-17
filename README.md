# SleepPulse iOS App

AI-powered sleep and heart health insights app.

## 🎯 Project Status

**Current Progress:** Day 1/70 - Foundation Setup ✅

## 🚀 Tech Stack

- **Platform:** iOS 16.0+
- **Language:** Swift
- **UI Framework:** SwiftUI
- **Architecture:** MVVM
- **Backend:** Firebase (Auth, Firestore, Functions)
- **Health Data:** HealthKit
- **Dependency Manager:** CocoaPods

## 📁 Project Structure
```
SleepPulse/
├── SleepPulse.xcworkspace      # Open this in Xcode
├── SleepPulse.xcodeproj
├── SleepPulse/                 # Source code
├── Docs/                       # Documentation & daily logs
├── Firebase/                   # Cloud Functions (coming soon)
├── Scripts/                    # Utility scripts
└── Design/                     # Design assets
```

## 🛠️ Setup Instructions

### Prerequisites
- Xcode 15+
- CocoaPods
- Firebase account

### Installation

1. Clone the repository:
```bash
git clone https://github.com/ramloops/sleeppulse-ios.git
cd sleeppulse-ios
git checkout develop
```

2. Install dependencies:
```bash
cd SleepPulse
pod install
```

3. Add your Firebase configuration:
   - Download `GoogleService-Info.plist` from Firebase Console
   - Add it to the `SleepPulse/` folder in Xcode

4. Open workspace:
```bash
open SleepPulse.xcworkspace
```

5. Build and run! (Cmd+R)

## 📝 Development Log

See [DAILY_LOG.md](Docs/DAILY_LOG.md) for daily progress updates.

## 🎯 Roadmap

- **Week 1-2:** Foundation (Auth, HealthKit, Firebase) ✅ In Progress
- **Week 3-5:** Core Features (Dashboard, Scoring, Insights)
- **Week 6-8:** Polish & Additional Features
- **Week 9-10:** Testing & App Store Launch

**Target Launch:** January 24, 2026

## 📱 Features (Coming Soon)

- 🌙 Sleep quality tracking and scoring
- ❤️ Heart health monitoring (HR, HRV)
- 🤖 AI-powered personalized insights
- 📊 Trend analysis (7-day, 30-day)
- 🔔 Smart notifications
- 📈 Beautiful data visualizations

## 🔒 Privacy

- All health data is encrypted
- No data sold to third parties
- User data deletion available
- Compliant with Apple's privacy guidelines

## 📄 License

MIT

## 👨‍💻 Author

Built with ❤️ by ramloops

---

**Day 1 Started:** November 17, 2025  
**Status:** Foundation in progress 🚀

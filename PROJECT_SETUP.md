# Xcode Project Setup Instructions

## Option 1: Create New Xcode Project (Recommended)

1. Open Xcode
2. Create a new project:
   - Choose **iOS** → **App**
   - Product Name: `PokerDues`
   - Interface: **SwiftUI**
   - Language: **Swift**
   - Storage: **None** (we're using UserDefaults)
3. Delete the default `ContentView.swift` file
4. Copy all files from this directory into your Xcode project:
   - `PokerDuesApp.swift` → Root level
   - `Models/` folder → Add to project
   - `Services/` folder → Add to project
   - `ViewModels/` folder → Add to project
   - `Views/` folder → Add to project
5. Build and run (⌘R)

## Option 2: Use Swift Package Manager

If you prefer to structure this as a package, you can use the Swift files directly. However, for iOS apps, an Xcode project is recommended.

## File Structure

```
PokerDues/
├── PokerDuesApp.swift
├── Models/
│   ├── Player.swift
│   └── Transaction.swift
├── Services/
│   └── SettlementCalculator.swift
├── ViewModels/
│   └── GameViewModel.swift
└── Views/
    ├── ContentView.swift
    ├── AddPlayerView.swift
    └── StatsView.swift
```

## Minimum iOS Version

Set your deployment target to **iOS 15.0** or higher in Xcode project settings.


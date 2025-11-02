# Poker Dues iOS App

A clean and minimal iOS application for calculating poker game settlements.

## Features

- Add players with their net amounts (positive = owed money, negative = owes money)
- Calculate minimum settlement transactions
- View overall statistics from all calculations
- Edit and delete players
- Clear game data and statistics
- Data persistence using UserDefaults

## How to Use

1. **Add Players**: Tap the "+" button to add players with their net amounts
2. **Calculate**: Tap "Calculate" to compute settlement transactions
3. **View Stats**: Tap the chart icon to view overall statistics
4. **Clear**: Tap "Clear" to remove all game data

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.7+

## Installation

1. Open the project in Xcode
2. Select your target device or simulator
3. Build and run (⌘R)

## Logic

The app implements the same settlement algorithm as the original Google Apps Script:
- Processes players from highest debt (most negative) backwards
- Each debtor pays creditors until their debt is settled
- Validates that grand total is zero before calculating
- Records all transactions in overall statistics


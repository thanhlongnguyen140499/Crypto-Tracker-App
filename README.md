# EverestCrypto

A SwiftUI cryptocurrency price tracker. Live market data for the top 250 coins by market cap, with 24-hour price movement and a sparkline for each.

Built to get hands-on with SwiftUI's data flow and Combine, so the architecture is deliberately clean rather than clever.

## How it's built

- **SwiftUI** for the whole UI — no UIKit
- **MVVM** — `HomeView` renders, `HomeViewModel` owns state, views stay declarative
- **Combine + URLSession** — `CoinDataService` publishes via `dataTaskPublisher` and the view model subscribes with `AnyCancellable`
- **[CoinGecko API](https://www.coingecko.com/en/api)** as the data source
- Reusable extensions on `Color`, `Double` and `UIScreen` to keep formatting out of the views

```
EverestCrypto/
├── Core/
│   ├── Components/CircleButton/   # animated circular button
│   └── Home/
│       ├── ViewModels/            # HomeViewModel
│       └── Views/                 # HomeView, CoinRowView
├── Models/CoinModel.swift
├── Services/CoinDataService.swift
└── Extensions/
```

## Running it

Open `EverestCrypto.xcodeproj` in Xcode and run. No API key needed — CoinGecko's public endpoint is unauthenticated.

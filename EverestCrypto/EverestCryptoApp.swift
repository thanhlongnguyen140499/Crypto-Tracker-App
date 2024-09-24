//
//  EverestCryptoApp.swift
//  EverestCrypto
//
//  Created by Edward Nguyen on 23/9/24.
//

import SwiftUI

@main
struct EverestCryptoApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(vm)
        }
    }
}

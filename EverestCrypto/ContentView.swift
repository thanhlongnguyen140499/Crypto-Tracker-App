//
//  ContentView.swift
//  EverestCrypto
//
//  Created by Edward Nguyen on 23/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.everest)
                Text("Red Text Color")
                    .foregroundStyle(Color.theme.red)
                
                Text("Green Text Color")
                    .foregroundStyle(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}

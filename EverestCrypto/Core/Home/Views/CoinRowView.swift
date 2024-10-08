//
//  CoinRowView.swift
//  EverestCrypto
//
//  Created by Edward Nguyen on 24/9/24.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
}

#Preview {
    Group {
        CoinRowView(coin: DeveloperPreview.instance.coin, showHoldingsColumn: true)
            .previewLayout(.sizeThatFits)
        CoinRowView(coin: DeveloperPreview.instance.coin, showHoldingsColumn: true)
            .previewLayout(.sizeThatFits)
    }
    
}

extension CoinRowView {
    
    private var leftColumn: some View {
        HStack {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(Color.theme.accent)
            
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Demicals())
            Text(coin.currentHoldings?.asNumberString() ?? "")
        }
        .foregroundStyle(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Demicals())
                .bold()
                .foregroundStyle(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundStyle((coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red
                )
        }
        .frame(width: (UIScreen.current?.bounds.size.width ?? 0) / 3, alignment: .trailing)
    }
}

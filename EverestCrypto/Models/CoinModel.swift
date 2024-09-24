//
//  CoinModel.swift
//  EverestCrypto
//
//  Created by Edward Nguyen on 23/9/24.
//

import Foundation

// CoinGecko API info
/* 
    E.g: https://api.coingecko.com/api/v3/key
    
    E.g: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 {
 id: "bitcoin",
 symbol: "btc",
 name: "Bitcoin",
 image: "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
 current_price: 63486,
 market_cap: 1255182009135,
 market_cap_rank: 1,
 fully_diluted_valuation: 1334090069773,
 total_volume: 34123615175,
 high_24h: 64688,
 low_24h: 62479,
 price_change_24h: 728.33,
 price_change_percentage_24h: 1.16054,
 market_cap_change_24h: 15436486570,
 market_cap_change_percentage_24h: 1.24513,
 circulating_supply: 19757903,
 total_supply: 21000000,
 max_supply: 21000000,
 ath: 73738,
 ath_change_percentage: -14.24875,
 ath_date: "2024-03-14T07:10:36.635Z",
 atl: 67.81,
 atl_change_percentage: 93148.98369,
 atl_date: "2013-07-06T00:00:00.000Z",
 roi: null,
 last_updated: "2024-09-23T15:28:41.836Z",
 sparkline_in_7d: {
 price: [
 58765.12817618118,
 58499.64650639906,
 58374.725818389015,
 57912.77735736806,
 57905.67320656069,
 57860.077940136594,
 58176.37890208296,
 57863.95250925426,
 57890.44885024387,
 57884.533124725094,
 57986.08347484864,
 58236.257445578536,
 58251.27267436425,
 57767.78226883802,
 57839.48097393634,
 58098.16699183134,
 58129.353688610405,
 58264.61830815356,
 58532.70872200161,
 58569.71835994324,
 58790.090047016616,
 58722.162538473516,
 59094.149237134654,
 59055.53531671722,
 59228.508480328026,
 59284.755003367514,
 59163.77955715653,
 61231.62129710131,
 61202.01968568921,
 60970.25348144018,
 60976.857374660656,
 60563.415830997714,
 59973.9506205091,
 60375.03695473223,
 60174.66622543997,
 60155.64411695945,
 60061.88485600524,
 60163.834722174084,
 60124.06622749374,
 60367.12638253788,
 60514.12318125176,
 60355.3951320565,
 60320.42252263266,
 60342.12443291608,
 60238.90248548927,
 60194.655723707816,
 59781.959515665185,
 59982.66746095182,
 59871.92952024553,
 59865.634809302755,
 59450.8514452217,
 59511.02624805182,
 59520.59594606601,
 59602.29473219028,
 60171.933857235636,
 60678.62222921164,
 60033.62696794817,
 60334.71975583846,
 60481.06798044665,
 61165.471218697974,
 61826.717613028115,
 61852.93928771889,
 61982.67165987673,
 61995.878699547255,
 62151.170540432715,
 62112.07774058046,
 61868.704910266235,
 62070.28774196219,
 62138.77892749226,
 62142.55195399946,
 62437.87543011053,
 62435.71774305727,
 62705.46504031729,
 63214.12051670896,
 63409.84242468018,
 63060.55291609862,
 63156.58167514334,
 63691.94971858993,
 63710.849971934,
 63326.74969222064,
 63209.279258654795,
 63107.859689652665,
 62816.818926782136,
 63030.91416557856,
 62859.881298503366,
 62723.21042425194,
 62940.13098404887,
 63221.25952578169,
 63938.06737730212,
 63845.79784800136,
 63663.26751820861,
 63794.65043498434,
 63445.26790940719,
 63450.98627177792,
 63535.939453794286,
 63605.91777446032,
 63560.955692456606,
 62858.48915175016,
 63176.27748140863,
 63035.96190672631,
 62963.619087084044,
 62977.99362070827,
 62340.31538268507,
 62898.995521616875,
 62741.96191420676,
 63275.835641788275,
 63218.74334629486,
 63133.41577914984,
 63112.814854791555,
 63137.69335249423,
 62927.858786150224,
 62901.80988214561,
 62903.375684484614,
 62814.00849523848,
 62913.746842802204,
 63014.15616462684,
 63062.570729513565,
 63034.28908934001,
 63016.36348613192,
 63073.66137369207,
 63095.753063338765,
 63163.604253392645,
 63180.17536879339,
 63195.459726426394,
 63211.867421926196,
 63327.035565487575,
 63281.38889027068,
 63276.43505382544,
 63195.69319932743,
 63153.94261495951,
 63135.94706839281,
 63245.85509990384,
 63404.0397412204,
 63221.03626631864,
 62994.183303289064,
 63172.702042744386,
 63128.63365328686,
 63143.39093156379,
 62950.492870246606,
 62872.55269458728,
 63029.7759254394,
 62849.84372885954,
 62720.62608203571,
 62630.55580520489,
 62884.44002271679,
 62812.42354825584,
 62700.898433980416,
 62629.676874796736,
 62591.27215225804,
 62784.84428558446,
 62924.27314216407,
 62898.99272469967,
 63238.25175392767,
 63304.5401448964,
 62734.546819803894,
 63849.17256282697,
 63458.9142356631,
 63776.94859257198,
 63820.0405246694,
 64501.15829950209,
 64306.459582669086,
 63792.9532888288,
 63651.56887446489,
 63624.815594830434,
 63439.76687029365,
 63556.53491966304,
 63638.03054249659,
 63418.90810348824
 ]
 },
 price_change_percentage_24h_in_currency: 1.1605376217497239
 }
 */

// MARK: - Welcome
struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath = "ath"
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl = "atl"
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}

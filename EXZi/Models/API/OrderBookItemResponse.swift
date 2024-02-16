//
//  OrderBookItemResponse.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import Foundation

struct OrderBookItemResponse: Decodable {
    let count: Int
    let price: Int
    let rate: Double
    let rate_f: String
    let volume: Double
    let volume_f: String
}

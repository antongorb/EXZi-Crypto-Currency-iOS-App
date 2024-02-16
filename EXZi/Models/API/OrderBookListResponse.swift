//
//  OrderBookListResponse.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import Foundation

struct OrderBookListResponse: Decodable {
    let buy: [OrderBookItemResponse]
    let sell: [OrderBookItemResponse]
}

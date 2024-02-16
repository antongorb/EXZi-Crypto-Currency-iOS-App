//
//  OrderBookItem.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import Foundation

struct OrderBookItem: Identifiable {
    let id: Int
    let buy: OrderBookItemResponse
    let sell: OrderBookItemResponse
}

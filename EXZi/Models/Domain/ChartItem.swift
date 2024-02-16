//
//  ChartItem.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import Foundation

struct ChartItem: Identifiable {
    let id: Int
    let close_f: String
    let close: Double
    let high_f: String
    let high: Double
    let low_f: String
    let low: Double
    let open_f: String
    let open: Double
    let volume_f: String
    let volume: Double
    let time: Double
    
    var date: Date {
        return Date(timeIntervalSince1970: time)
    }
}

//
//  ChartInfoView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI
import Charts

struct ChartInfoView: View {
    
    private let chartItems: [ChartItem]
    
    init(chartItems: [ChartItem]) {
        self.chartItems = chartItems
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(Color(hex: 0x1B1F2D))
                .frame(height: 313)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Chart(chartItems) { item in
                
                RectangleMark(
                    x: .value("Date", item.date),
                    yStart: .value("Low", item.low),
                    yEnd: .value("High", item.high),
                    width: 1
                )
            }.chartScrollableAxes(.horizontal)
        }
        .padding(.top, 12)
        .padding([.leading, .trailing], 16)
    }
}

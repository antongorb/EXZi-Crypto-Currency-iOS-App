//
//  ChartView.swift
//  EXZi
//
//  Created by Anton Gorb on 15.02.2024.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    @State private var viewModel = ChartViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                
                TabView()
                
                ScrollView {
                    
                    HeaderView()
                    
                    TimelineView()
                    
                    ChartInfoView(chartItems: viewModel.chartItems)
                    
                    OrdersView(ordersItems: viewModel.ordersItems)
                    
                }.safeAreaInset(edge: .bottom, spacing: 0) {
                    Spacer().frame(height: 16)
                }
                
                BottomPanelView()
            }
        }
    }
}

#Preview {
    ChartView().background(Color(hex: 0x0E111B))
}

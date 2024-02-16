//
//  OrdersView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI

struct OrdersView: View {
    
    private let ordersItems: [OrderBookItem]
    
    init(ordersItems: [OrderBookItem]) {
        self.ordersItems = ordersItems
    }
    
    var body: some View {
        HStack(spacing: 19.0) {
            Text("MA")
                .foregroundStyle(Color(hex: 0xDADBDD))
                .font(Font.system(size: 11).weight(.medium))
            
            Text("EMA")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 11).weight(.medium))
            
            Text("BOLL")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 11).weight(.medium))
            
            Rectangle()
                .frame(width: 1, height: 16)
                .foregroundStyle(Color(hex: 0x6F7DAA))
            
            Text("VOL")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 11).weight(.medium))
            
            Text("MACD")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 11).weight(.medium))
            
            Text("KDJ")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 11).weight(.medium))
            
            Text("RSI")
                .foregroundStyle(Color(hex: 0xDADBDD))
                .font(Font.system(size: 11).weight(.medium))
            
            Text("WR")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 11).weight(.medium))
        }.padding([.leading, .trailing], 24.0)
            .padding(.top, 12.0)
        
        HStack(spacing: 16.0) {
            Text("Order Book")
                .foregroundStyle(.white)
                .font(Font.system(size: 13).weight(.semibold))
            Text("Recent Trading").foregroundStyle(Color(hex: 0xA4A8AD))
                .font(Font.system(size: 13).weight(.semibold))
            Spacer()
        }.padding([.leading, .trailing], 16)
            .padding([.top], 24)
        
        ZStack {
            Rectangle().frame(height: 1).foregroundStyle(Color(hex: 0x333C57))
                .padding([.leading, .trailing], 16)
            HStack {
                Spacer().frame(width: 26)
                Rectangle()
                    .frame(height: 3)
                    .frame(width: 49)
                    .foregroundStyle(Color(hex: 0xF4F5F5))
                Spacer()
            }
        }
        
        HStack {
            Text("Quantity (BTC)")
                .foregroundStyle(Color(hex: 0xA4A8AD))
                .font(Font.system(size: 11).weight(.medium))
            
            Spacer()
            
            Text("Price (USDT)")
                .foregroundStyle(Color(hex: 0xA4A8AD))
                .font(Font.system(size: 11).weight(.medium))
            
            Spacer()
            
            HStack(spacing: 15.0) {
                Text("0.1")
                    .foregroundStyle(Color(hex: 0xBFC2C5))
                    .font(Font.system(size: 10).weight(.medium))
                
                Image("arrow_down")
            }
            .frame(width: 57, height: 20)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color(hex: 0x424D70), lineWidth: 0.5)
            )
        }
        .padding(.top, 6)
        .padding([.leading, .trailing], 16)
        
        ForEach(ordersItems) { order in
            HStack {
                HStack {
                    Text(order.buy.volume_f)
                        .foregroundStyle(Color(hex: 0xF4F5F5))
                        .font(Font.system(size: 11).weight(.medium))
                    
                    Spacer()
                    
                    Text(order.buy.rate_f)
                        .foregroundStyle(Color(hex: 0x00B27C))
                        .font(Font.system(size: 11).weight(.medium))
                }
                
                Spacer()
                
                HStack {
                    Text(order.sell.rate_f)
                        .foregroundStyle(Color(hex: 0xF65454))
                        .font(Font.system(size: 11).weight(.medium))
                    
                    Spacer()
                    
                    Text(order.sell.volume_f)
                        .foregroundStyle(Color(hex: 0xF4F5F5))
                        .font(Font.system(size: 11).weight(.medium))
                }
                
            }.padding([.leading, .trailing], 16)
                .padding(.top , 14)
        }
    }
}

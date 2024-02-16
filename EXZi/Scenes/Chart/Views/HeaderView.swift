//
//  HeaderView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Text("42.897.9")
                    .foregroundStyle(Color(hex: 0x00B27C))
                    .font(Font.system(size: 26).weight(.semibold))
                HStack {
                    Text("=$42.893.05")
                        .foregroundStyle(Color(hex: 0xBFC2C5))
                        .font(Font.system(size: 13).weight(.medium))
                    Text("+2,44%")
                        .foregroundStyle(Color(hex: 0x00B27C))
                        .font(Font.system(size: 11).weight(.medium))
                }
            }
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("24h High")
                        .foregroundStyle(Color(hex: 0x898F94))
                        .font(Font.system(size: 10).weight(.medium))
                    Text("43.787,18")
                        .foregroundStyle(Color(hex: 0xF4F5F5))
                        .font(Font.system(size: 11).weight(.medium))
                    
                    Spacer().frame(height: 5)
                    
                    Text("24h Amount(BTC)")
                        .foregroundStyle(Color(hex: 0x898F94))
                        .font(Font.system(size: 10).weight(.medium))
                    Text("3.762,10")
                        .foregroundStyle(Color(hex: 0xF4F5F5))
                        .font(Font.system(size: 11).weight(.medium))
                }
                
                VStack(alignment: .leading) {
                    Text("24h Low")
                        .foregroundStyle(Color(hex: 0x898F94))
                        .font(Font.system(size: 10).weight(.medium))
                    Text("42.421,09")
                        .foregroundStyle(Color(hex: 0xF4F5F5))
                        .font(Font.system(size: 11).weight(.medium))
                    
                    Spacer().frame(height: 5)
                    
                    Text("24h Volume(USDT)")
                        .foregroundStyle(Color(hex: 0x898F94))
                        .font(Font.system(size: 10).weight(.medium))
                    Text("112.76M")
                        .foregroundStyle(Color(hex: 0xF4F5F5))
                        .font(Font.system(size: 11).weight(.medium))
                }
            }
        }
        .padding([.leading, .trailing])
    }
}

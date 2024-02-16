//
//  BottomPanelView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI

struct BottomPanelView: View {
    
    var body: some View {
        VStack {
            Spacer().frame(height: 15)
            
            HStack {
                VStack {
                    Image("alert")
                    
                    Text("Alert")
                        .foregroundStyle(Color(hex: 0xFFFFFF))
                        .font(Font.system(size: 10).weight(.regular))
                }
                
                Spacer().frame(width: 20)
                
                VStack {
                    Image("alert")
                    
                    Text("Margin")
                        .foregroundStyle(Color(hex: 0xFFFFFF))
                        .font(Font.system(size: 10).weight(.regular))
                }
                
                Spacer().frame(width: 12)
                
                Rectangle()
                    .frame(width: 1, height: 36)
                    .foregroundColor(Color(hex: 0x333C57))
                
                Spacer().frame(width: 12)
                
                Button(action: {
                    
                }) {
                    Text("Buy")
                        .font(Font.system(size: 15).weight(.semibold))
                        .padding(.horizontal, 30)
                        .frame(height: 25)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(Color(hex: 0x00B27C))
                
                Spacer().frame(width: 12)
                
                Button(action: {
                    
                }) {
                    Text("Sell")
                        .font(Font.system(size: 15).weight(.semibold))
                        .padding(.horizontal, 30)
                        .frame(height: 25)
                    
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(Color(hex: 0xF65454))
            }.frame(minWidth: 0, maxWidth: .infinity)
            
        }.background(Color(hex: 0x1B1F2D))
    }
}

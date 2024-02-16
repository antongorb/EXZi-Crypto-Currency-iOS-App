//
//  TimelineView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI

struct TimelineView: View {
    
    var body: some View {
        HStack(spacing: 13.0) {
            Text("Line")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("15m")
                .foregroundStyle(Color(hex: 0xDADBDD))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("1h")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("4h")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("1d")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("1w")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("More")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Text("Depth")
                .foregroundStyle(Color(hex: 0x898F94))
                .font(Font.system(size: 12).weight(.medium))
            
            Spacer()
        }.padding([.leading, .trailing], 16)
            .padding(.top, 20)
    }
}

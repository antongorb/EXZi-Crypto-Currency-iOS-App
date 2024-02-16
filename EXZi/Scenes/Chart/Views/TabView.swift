//
//  TabView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI

struct TabView: View {
    
    var body: some View {
        HStack(spacing: 16.0) {
            Text("Chart").foregroundStyle(.white)
                .font(Font.system(size: 13).weight(.semibold))
            Text("Info").foregroundStyle(Color(hex: 0xA4A8AD))
                .font(Font.system(size: 13).weight(.semibold))
            Spacer()
        }.padding([.leading, .trailing], 16)
        
        ZStack {
            Rectangle().frame(height: 1).foregroundStyle(Color(hex: 0x333C57))
            HStack {
                Spacer().frame(width: 24)
                Rectangle()
                    .frame(height: 3)
                    .frame(width: 22)
                    .foregroundStyle(Color(hex: 0x39A3D0))
                Spacer()
            }
        }
    }
}

//
//  NavigationBarView.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import SwiftUI

struct NavigationBarView: View {
    
    var body: some View {
        HStack {
            HStack(spacing: 12.0) {
                Image("back")
                Image("arrows")
                Text("BTC/USDT")
                    .foregroundStyle(.white)
                    .font(Font.system(size: 20).weight(.semibold))
            }
            
            Spacer()
            HStack(spacing: 16.0) {
                Image("star")
                Image("share")
            }
            
        }.padding()
    }
}

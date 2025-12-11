//
//  HeaderView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct HeaderView: View {
    var title: String = "우리집"
    
    var onTapTitle: (() -> Void)? = nil
    var onTapPromo: (() -> Void)? = nil
    var onTapAlarm: (() -> Void)? = nil
    var onTapCart: (() -> Void)? = nil
    
    var body: some View {
        HStack {

            Button(action: {
                onTapTitle?()
            }) {
                HStack(spacing: 4) {
                    Text(title)
                        .applyBaeminFont(.head_b_16)
                        .foregroundColor(.baeminBlack)
                    
                    Image(.polygon)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 8, height: 8)
                }
            }
            .buttonStyle(.plain)
            
            Spacer()
            
            
            HStack(spacing: 12) {
                Button(action: {
                    onTapPromo?()
                }) {
                    ZStack {
                        Color.clear
                            .frame(width: 24, height: 24)
                        
                        Image("percent")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                    }
                }
                .buttonStyle(.plain)
                
                Button(action: {
                    onTapAlarm?()
                }) {
                    Image("alarm")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                }
                .buttonStyle(.plain)
                
                Button(action: {
                    onTapCart?()
                }) {
                    Image("cart")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 16)
        .frame(height: 34)
        .background(Color.baeminBackgroundWhite)
    }
}

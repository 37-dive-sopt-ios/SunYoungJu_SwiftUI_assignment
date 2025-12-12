//
//  FeedPromotionView.swift
//  Baemin
//
//  Created by sun on 12/10/25
//

import SwiftUI

struct FeedPromotionView: View {

    // MARK: - Body
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            LinearGradient(
                colors: [
                    Color.baeminMint300.opacity(0.0),
                    Color.baeminMint300.opacity(0.8)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(height: 110)
            .ignoresSafeArea(edges: .top)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("bmart")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 18)
                    Spacer()
                }
                
                HStack(spacing: 2) {
                    Text("전상품 쿠폰팩 + 60%특가")
                        .applyBaeminFont(.head_b_16)
                        .foregroundColor(.baeminBlack)
                        .lineLimit(1)
                    
                    Image("chevron-right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 10)
            .padding(.bottom, 10)
        }
        .frame(height: 110)
        .background(Color.baeminBackgroundWhite)
    }
}


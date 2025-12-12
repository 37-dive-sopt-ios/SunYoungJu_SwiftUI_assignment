//
//  RankingItemView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct RankingItemView: View {
    let viewData: RankingItemViewData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(viewData.thumbnailName)
                .resizable()
                .scaledToFill()
                .frame(width: 145, height: 145)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.baeminGray200, lineWidth: 1)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text(viewData.brandName)
                        .applyBaeminFont(.body_r_12)
                        .foregroundColor(.baeminGray600)
                    
                    HStack(spacing: 2) {
                        Image("star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                        
                        Text("\(viewData.ratingText) (\(viewData.reviewCountText))")
                            .applyBaeminFont(.body_r_12)
                            .foregroundColor(.baeminGray600)
                    }
                }
                
                Text(viewData.title)
                    .applyBaeminFont(.body_r_14)
                    .foregroundColor(.baeminBlack)
                    .lineLimit(2)
                
                VStack(alignment: .leading, spacing: 2) {
                    HStack(spacing: 6) {
                        if let percent = viewData.discountPercentText {
                            Text(percent)
                                .applyBaeminFont(.head_b_14)
                                .foregroundColor(.baeminRed)
                        }
                        
                        Text(viewData.priceText)
                            .applyBaeminFont(.head_b_14)
                            .foregroundColor(.baeminBlack)
                    }
                    
                    if let original = viewData.originalPriceText {
                        Text(original)
                            .applyBaeminFont(.body_r_12)
                            .foregroundColor(.baeminGray300)
                            .strikethrough()
                    }
                }
                
                Text(viewData.minOrderText)
                    .applyBaeminFont(.head_b_14)
                    .foregroundColor(.baeminPurple)
            }
        }
        .padding(12)
    }
}

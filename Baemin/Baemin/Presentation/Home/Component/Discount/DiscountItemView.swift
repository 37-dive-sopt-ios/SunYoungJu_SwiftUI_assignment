//
//  DiscountItemView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct DiscountItemView: View {
    let viewData: DiscountItemViewData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 188, height: 126)
                    .overlay(
                        Image(viewData.thumbnailName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 188, height: 126)
                            .clipped()
                    )
            }
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .center, spacing: 2) {
                    Text(viewData.name)
                        .applyBaeminFont(.head_b_14)
                        .foregroundColor(.baeminBlack)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    HStack(spacing: 2) {
                        Image("star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                        
                        Text(viewData.ratingText)
                            .applyBaeminFont(.body_r_12)
                            .foregroundColor(.baeminBlack)
                        
                        Text("(\(viewData.reviewCountText))")
                            .applyBaeminFont(.body_r_12)
                            .foregroundColor(.baeminGray700)
                    }
                }
                
                HStack(alignment: .center, spacing: 2) {
                    HStack(spacing: 2) {
                        Image("money")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                        
                        Text(viewData.deliveryTimeText)
                            .applyBaeminFont(.body_r_12)
                            .foregroundColor(.baeminBlack)
                    }
                    
                    if viewData.isFreeDelivery {
                        HStack(spacing: 2) {
                            Image("bamin_club")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                            
                            Text(viewData.deliveryFeeText)
                                .applyBaeminFont(.head_b_14)
                                .foregroundColor(.baeminPurple)
                        }
                    }
                }
                
                HStack(spacing: 6) {
                    if viewData.hasClub {
                        ChipView(
                            iconName: "bamin_club",
                            text: "배민클럽",
                            textColor: .baeminMint600,
                            borderColor: .baeminMint600,
                            backgroundColor: Color(UIColor.baeminMint300.withAlphaComponent(0.2))
                        )
                    }
                    if viewData.hasCoupon {
                        ChipView(
                            iconName: nil,
                            text: "소비쿠폰",
                            textColor: .baeminGray800,
                            borderColor: .clear,
                            backgroundColor: .baeminBackgroundWhite
                        )
                    }
                    if viewData.hasPickup {
                        ChipView(
                            iconName: nil,
                            text: "픽업가능",
                            textColor: .baeminGray800,
                            borderColor: .clear,
                            backgroundColor: .baeminBackgroundWhite
                        )
                    }
                }

                HStack(spacing: 6) {
                    if viewData.hasHygiene {
                        ChipView(
                            iconName: nil,
                            text: "위생인증",
                            textColor: .baeminGray800,
                            borderColor: .clear,
                            backgroundColor: .baeminBackgroundWhite
                        )
                    }
                }
            }
        }
        .padding(8)
    }
}

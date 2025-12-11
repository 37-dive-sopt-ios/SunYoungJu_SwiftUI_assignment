//
//  RecentItemView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct RecentItemView: View {
    let viewData: RecentItemViewData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
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
            
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 4) {
                    Image("time")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text(viewData.recentOrderText)
                        .applyBaeminFont(.body_r_12)
                        .foregroundColor(.baeminBlue)
                }
                
                HStack(spacing: 2) {
                    Text(viewData.name)
                        .applyBaeminFont(.head_b_14)
                        .foregroundColor(.baeminBlack)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    HStack(spacing: 1) {
                        Image("star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                        
                        Text(viewData.ratingText)
                            .applyBaeminFont(.body_r_12)
                            .foregroundColor(.baeminBlack)
                    }
                }

                HStack(spacing: 2) {
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
                
                HStack(spacing: 4) {
                    if viewData.hasClub {
                        ChipView(
                            iconName: "bamin_club",
                            text: "배민클럽",
                            textColor: .baeminMint600,
                            borderColor: .baeminMint600,
                            backgroundColor: Color(UIColor.baeminMint300.withAlphaComponent(0.2))
                        )
                    }
                    if viewData.hasPickup {
                        ChipView(
                            iconName: nil,
                            text: "픽업가능",
                            textColor: .baeminGray700,
                            borderColor: .clear,
                            backgroundColor: .baeminBackgroundWhite
                        )
                    }
                    if viewData.hasReservation {
                        ChipView(
                            iconName: nil,
                            text: "예약가능",
                            textColor: .baeminGray700,
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

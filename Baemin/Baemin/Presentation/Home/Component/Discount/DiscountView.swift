//
//  DiscountView.swift
//  Baemin
//
//  Created by sun on 12/10/25
//

import SwiftUI

struct DiscountView: View {
    
    let discounts: [Discount]
    let title: String
    let subtitle: String?
    
    var body: some View {
        
        let items = discounts.map { DiscountItemViewData(from: $0) }
        
        VStack(spacing: 0) {
            
            VStack(spacing: 0) {
                SectionHeaderView(
                    title: title,
                    subtitle: subtitle,
                    style: .discounted
                )
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(items) { item in
                            DiscountItemView(viewData: item)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                }
                
                HStack {
                    Spacer()
                    moreButton
                    Spacer()
                }
                .padding(.top, 8)
                .padding(.bottom, 0)
            }
            .background(Color.baeminWhite)
            
            Color.baeminBackgroundWhite
                .frame(height: 20)
                .frame(maxWidth: .infinity)
        }
    }
    
    // MARK: - More Button View
    
    private var moreButton: some View {
        HStack(spacing: 4) {
            Text("할인하는 가게")
                .applyBaeminFont(.head_b_14)
            Text("더보기")
                .applyBaeminFont(.body_r_14)
            
            Image("chevron-right")
                .resizable()
                .renderingMode(.template)
                .frame(width: 12, height: 12)
        }
        .foregroundColor(.baeminBlack)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(Color.baeminWhite)
        .cornerRadius(50)
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color(.baeminGray200), lineWidth: 1)
        )
    }
}

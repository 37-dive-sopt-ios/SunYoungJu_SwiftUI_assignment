//
//  FeedTabContainerView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct FeedTabContainerView: View {
    
    // MARK: - Properties
    
    let tabs: [String]
    let categories: [FeedCategory]
    @Binding var selectedIndex: Int
    var onSelectCategory: ((FeedCategory) -> Void)? = nil
    
    private let columns: [GridItem] = Array(
        repeating: GridItem(.flexible(), spacing: 12),
        count: 5
    )
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            
            divider
            tabContentView
            divider
            moreButton
        }
    }
}

// MARK: - Subviews

private extension FeedTabContainerView {
    
    var divider: some View {
        Rectangle()
            .fill(Color.baeminGray200)
            .frame(height: 1)
    }
    
    var tabContentView: some View {
        TabView(selection: $selectedIndex) {
            ForEach(tabs.indices, id: \.self) { index in
                if index == 0 {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(categories) { category in
                            Button {
                                onSelectCategory?(category)
                            } label: {
                                CategoryItemView(category: category)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 20)
                } else {
                    VStack {
                        Spacer()
                        Text("\(tabs[index]) 페이지")
                            .applyBaeminFont(.title_sb_18)
                            .foregroundColor(.baeminGray300)
                        Spacer()
                    }
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 200)
    }
    
    var moreButton: some View {
        Button {
            print("더보기 탭")
        } label: {
            HStack(spacing: 4) {
                Text("음식배달")
                    .applyBaeminFont(.head_b_14)
                Text("에서 더보기")
                    .applyBaeminFont(.body_r_14)
                Image("chevron-right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
            }
            .foregroundColor(.baeminBlack)
        }
        .buttonStyle(.plain)
        .frame(height: 48)
    }
}

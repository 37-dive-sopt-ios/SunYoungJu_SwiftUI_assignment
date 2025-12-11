//
//  FeedView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct FeedView: View {
    
    // MARK: - Properties
    
    @State private var selectedIndex: Int = 0
    
    private let tabs: [String]
    private let categories: [FeedCategory]
    
    var onSelectCategory: ((FeedCategory) -> Void)? = nil
    

    init(
        tabs: [String] = ["음식배달", "픽업", "장보기·쇼핑", "선물하기", "혜택모아보기"],
        categories: [FeedCategory] = FeedCategory.mocks,
        onSelectCategory: ((FeedCategory) -> Void)? = nil
    ) {
        self.tabs = tabs
        self.categories = categories
        self.onSelectCategory = onSelectCategory
    }
    
    // MARK: - Body
    
    var body: some View {
        ZStack(alignment: .top) {
            FeedPromotionView()
            
            VStack(spacing: 0) {
                Spacer().frame(height: 70)
                
                FeedMenubarContainerView(
                    titles: tabs,
                    selectedIndex: $selectedIndex
                )
                
                FeedTabContainerView(
                    tabs: tabs,
                    categories: categories,
                    selectedIndex: $selectedIndex,
                    onSelectCategory: onSelectCategory
                )
            }
        }
        .background(Color.baeminWhite)
    }
}



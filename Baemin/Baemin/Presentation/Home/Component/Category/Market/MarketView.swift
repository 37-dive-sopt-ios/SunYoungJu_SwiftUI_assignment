//
//  MarketView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct MarketView: View {

    // MARK: - Properties
    
    private let items: [MarketCategory]
    var onSelect: ((MarketCategory) -> Void)? = nil
    
    init(
        items: [MarketCategory] = MarketCategory.mocks,
        onSelect: ((MarketCategory) -> Void)? = nil
    ) {
        self.items = items
        self.onSelect = onSelect
    }
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            Color.baeminBackgroundWhite
                .frame(height: 10)
                .frame(maxWidth: .infinity)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { category in
                        Button {
                            onSelect?(category)
                        } label: {
                            CategoryItemView(category: category)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
            .background(Color.white)
            
            Color.baeminBackgroundWhite
                .frame(height: 10)
                .frame(maxWidth: .infinity)
        }
    }
}

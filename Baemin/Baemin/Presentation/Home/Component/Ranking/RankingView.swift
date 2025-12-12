//
//  RankingSectionView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct RankingView: View {
    
    // MARK: - Properties
    
    private let items: [RankingItemViewData]
    private let title: String
    private let subtitle: String?
    
    init(
        rankings: [Ranking],
        title: String,
        subtitle: String? = nil
    ) {
        self.items = rankings.map { RankingItemViewData(from: $0) }
        self.title = title
        self.subtitle = subtitle
    }
    
    init(
        items: [RankingItemViewData],
        title: String,
        subtitle: String? = nil
    ) {
        self.items = items
        self.title = title
        self.subtitle = subtitle
    }
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            SectionHeaderView(
                title: title,
                subtitle: subtitle,
                style: .ranking
            )
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 4) {
                    ForEach(items) { item in
                        RankingItemView(viewData: item)
                    }
                }
                .padding(.horizontal, 4)
                .padding(.vertical, 4)
            }
        }
        .background(alignment: .top) {
            LinearGradient(
                colors: [
                    Color.baeminBackgroundPurple.opacity(1.0),
                    Color.baeminBackgroundPurple.opacity(0.0)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(height: 130)
        }
        .background(Color.white)
        
        Color.baeminBackgroundWhite
            .frame(height: 10)
            .frame(maxWidth: .infinity)
    }
}

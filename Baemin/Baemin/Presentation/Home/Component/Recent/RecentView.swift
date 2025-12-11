//
//  RecentView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct RecentView: View {
    
    let recents: [Recent]
    let title: String
    let subtitle: String?
    
    var body: some View {
        
        let items = recents.map { RecentItemViewData(from: $0) }
        
        VStack(spacing: 0) {
            
            SectionHeaderView(
                title: title,
                subtitle: subtitle,
                style: .recent
            )
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(items) { item in
                        RecentItemView(viewData: item)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
        }
        .background(Color.baeminWhite)
        
        Color.baeminBackgroundWhite
            .frame(height: 10)
            .frame(maxWidth: .infinity)
    }
}

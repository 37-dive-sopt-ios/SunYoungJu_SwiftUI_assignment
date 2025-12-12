//
//  FeedMenubarContainerView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct FeedMenubarContainerView: View {
    
    // MARK: - Properties
    
    let titles: [String]
    @Binding var selectedIndex: Int
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            
            FeedMenubarView(
                titles: titles,
                selectedIndex: $selectedIndex
            )
        }
        .background(
            Color.white
                .clipShape(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                )
        )
        .padding(.top, 10)
    }
}

//
//  FeedMenubarView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct FeedMenubarView: View {
    
    // MARK: - Properties
    
    let titles: [String]
    @Binding var selectedIndex: Int
    
    @Namespace private var underlineNamespace
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom, spacing: 24) {
                ForEach(titles.indices, id: \.self) { index in
                    let isSelected = index == selectedIndex
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            selectedIndex = index
                        }
                    } label: {
                        VStack(spacing: 6) {
                            Text(titles[index])
                                .applyBaeminFont(isSelected ? .head_b_18 : .title_sb_18)
                                .foregroundColor(isSelected ? .baeminBlack : .baeminGray300)
                            
                            ZStack {
                                if isSelected {
                                    Capsule()
                                        .fill(Color.baeminBlack)
                                        .matchedGeometryEffect(
                                            id: "feed-underline",
                                            in: underlineNamespace
                                        )
                                        .frame(height: 3)
                                        .padding(.top, 3)
                                } else {
                                    Color.clear
                                        .frame(height: 3)
                                        .padding(.top, 3)
                                }
                            }
                        }
                        .frame(maxHeight: .infinity, alignment: .bottom)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal, 16)
        }
        .frame(height: 50)
    }
}

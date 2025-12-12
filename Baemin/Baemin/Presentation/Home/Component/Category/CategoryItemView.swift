//
//  CategoryItemView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct CategoryItemView<Item: CategoryItemType>: View {
    let category: Item
    
    var body: some View {
        VStack(spacing: 6) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.baeminBackgroundWhite)
                    .frame(width: 58, height: 58)
                
                Image(category.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 58, height: 58)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            Text(category.title)
                .applyBaeminFont(.body_r_14)
                .foregroundColor(.baeminBlack)
                .lineLimit(1)
                .frame(maxWidth: 58)
        }
    }
}


//
//  ChipView.swift
//  Baemin
//
//  Created by sun on 11/14/25
//

import SwiftUI

struct ChipView: View {
    
    // MARK: - Properties
    
    let iconName: String?
    let text: String
    let textColor: Color
    let borderColor: Color
    let backgroundColor: Color
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: iconName == nil ? 0 : 2) {
            if let iconName {
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 14)
            }
            
            Text(text)
                .applyBaeminFont(.title_sb_10)
                .foregroundColor(textColor)
        }
        .padding(.vertical, 3)
        .padding(.horizontal, 5)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .fill(backgroundColor)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(borderColor, lineWidth: 1)
        )
    }
}


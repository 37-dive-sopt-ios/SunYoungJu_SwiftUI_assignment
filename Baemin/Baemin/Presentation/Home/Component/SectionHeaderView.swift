//
//  SectionHeaderView.swift
//  Baemin
//
//  Created by sun on 12/11/25.
//

import SwiftUI

enum SectionHeaderStyle {
    case ranking
    case recent
    case discounted
}

struct SectionHeaderView: View {
    
    // MARK: - Properties
    
    let title: String
    let subtitle: String?
    let style: SectionHeaderStyle
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: 8) {
            textStack
            Spacer(minLength: 0)
            rightStack
        }
        .padding(.top, 20)
        .padding(.horizontal, 16)
    }
}

// MARK: - Subviews

private extension SectionHeaderView {
    
    var textStack: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Text(title)
                    .applyBaeminFont(.head_b_18)
                    .foregroundColor(titleColor)
                
                Image("info")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .foregroundColor(infoTintColor)
            }
            
            if let subtitle {
                Text(subtitle)
                    .applyBaeminFont(.body_r_14)
                    .foregroundColor(subtitleColor)
            }
        }
    }
    
    @ViewBuilder
    var rightStack: some View {
        HStack(spacing: 8) {
            if showsMore {
                HStack(spacing: 2) {
                    Text("전체보기")
                        .applyBaeminFont(.body_r_12)
                        .foregroundColor(moreTextColor)
                    
                    Image("chevron-right")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                        .foregroundColor(chevronTintColor)
                }
            }
            
            if showsDiscount {
                Image("discount")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 66, height: 59)
            }
        }
    }
}

// MARK: - Style

private extension SectionHeaderView {
    
    var titleColor: Color {
        switch style {
        case .ranking:    return .baeminWhite
        case .recent,
             .discounted: return .baeminBlack
        }
    }
    
    var subtitleColor: Color {
        switch style {
        case .ranking:    return .baeminWhite
        case .recent,
             .discounted: return .baeminGray600
        }
    }
    
    var infoTintColor: Color {
        switch style {
        case .ranking:    return .baeminWhite
        case .recent,
             .discounted: return .baeminBlack
        }
    }
    
    var moreTextColor: Color {
        switch style {
        case .ranking:    return .baeminWhite
        case .recent:     return .baeminBlack
        case .discounted: return .baeminBlack
        }
    }
    
    var chevronTintColor: Color {
        switch style {
        case .ranking:    return .baeminWhite
        case .recent,
             .discounted: return .baeminBlack
        }
    }
    
    var showsMore: Bool {
        switch style {
        case .ranking, .recent: return true
        case .discounted:       return false
        }
    }
    
    var showsDiscount: Bool {
        switch style {
        case .discounted: return true
        default:          return false
        }
    }
}

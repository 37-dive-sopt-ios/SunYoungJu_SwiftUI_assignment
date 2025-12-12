//
//  BaeminFont.swift
//  Baemin
//
//  Created by sun on 10/27/25.
//

import SwiftUI

enum BaeminFont {
    case head_b_24
    case head_b_18
    case head_b_16
    case head_b_14
    case head_b_13

    case title_sb_18
    case title_sb_14
    case title_sb_10

    case body_r_14
    case body_r_13
    case body_r_12
    case body_r_10

    // MARK: - Font Size
    
    private var size: CGFloat {
        switch self {
        case .head_b_24:   return 24
        case .head_b_18:   return 18
        case .head_b_16:   return 16
        case .head_b_14:   return 14
        case .head_b_13:   return 13

        case .title_sb_18: return 18
        case .title_sb_14: return 14
        case .title_sb_10: return 10

        case .body_r_14:   return 14
        case .body_r_13:   return 13
        case .body_r_12:   return 12
        case .body_r_10:   return 10
        }
    }

    // MARK: - Letter Spacing (% → pt 변환)

    private var letterSpacingPercent: CGFloat {
        switch self {
        case .head_b_24:   return -2
        case .head_b_18:   return -2
        case .head_b_16:   return -2
        case .head_b_14:   return -4
        case .head_b_13:   return -6

        case .title_sb_18: return -3
        case .title_sb_14: return -6
        case .title_sb_10: return -6

        case .body_r_14:   return -4
        case .body_r_13:   return -3
        case .body_r_12:   return -3
        case .body_r_10:   return -4
        }
    }

    var letterSpacing: CGFloat {
        letterSpacingPercent / 100 * size
    }

    // MARK: - Line Height

    private var lineHeightMultiple: CGFloat { 1.0 }

    var lineHeight: CGFloat {
        uiFontGuide().lineHeight * lineHeightMultiple
    }

    // MARK: - Font Name

    private var fontName: String {
        switch self {
        case .head_b_24, .head_b_18, .head_b_16, .head_b_14, .head_b_13:
            return "Pretendard-Bold"
        case .title_sb_18, .title_sb_14, .title_sb_10:
            return "Pretendard-SemiBold"
        case .body_r_14, .body_r_13, .body_r_12, .body_r_10:
            return "Pretendard-Regular"
        }
    }

    // MARK: - UIFont / SwiftUI Font

    func uiFontGuide() -> UIFont {
        UIFont(name: fontName, size: size)!
    }

    var swiftUIFont: Font {
        .custom(fontName, size: size)
    }
}

// MARK: - BaeminFontModifier

struct BaeminFontWithLineHeight: ViewModifier {
    let uiFont: UIFont
    let targetLineHeight: CGFloat
    let letterSpacing: CGFloat

    func body(content: Content) -> some View {
        content
            .font(Font(uiFont))
            .lineSpacing(targetLineHeight - uiFont.lineHeight)
            .kerning(letterSpacing)
            .padding(.vertical, (targetLineHeight - uiFont.lineHeight) / 2)
    }
}

extension View {
    func applyBaeminFont(_ font: BaeminFont) -> some View {
        modifier(
            BaeminFontWithLineHeight(
                uiFont: font.uiFontGuide(),
                targetLineHeight: font.lineHeight,
                letterSpacing: font.letterSpacing
            )
        )
    }
}

//
//  SearchBarView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    
    var placeholder: String = "찾아라! 맛있는 음식과 맛집"
    var onSearch: ((String) -> Void)? = nil
    
    private enum Style {
        static let borderWidth: CGFloat = 1
        static let horizontalPadding: CGFloat = 16
        static let spacing: CGFloat = 8
        static let iconSize: CGFloat = 24
    }
    
    var body: some View {
        HStack(spacing: Style.spacing) {
            
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .applyBaeminFont(.body_r_14)
                        .foregroundColor(.baeminGray300)
                        .lineSpacing(0)
                        .padding(.trailing, 8)
                }
                
                TextField("", text: $text, onCommit: {
                    onSearch?(text)
                })
                .applyBaeminFont(.body_r_14)
                .foregroundColor(.baeminBlack)
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
            }
            
            Button {
                onSearch?(text)
            } label: {
                if let uiImage = UIImage(named: "search") {
                    Image(uiImage: uiImage)
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Style.iconSize, height: Style.iconSize)
                        .foregroundColor(.baeminGray700)
                }
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, Style.horizontalPadding)
        .padding(.vertical, 8)
        .background(Color.baeminWhite)
        .overlay(
            Capsule()
                .stroke(Color.baeminBlack, lineWidth: Style.borderWidth)
        )
        .clipShape(Capsule())
    }
}

//
//  PlaceholderTabView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct PlaceholderTabView: View {
    let title: String
    
    var body: some View {
        ZStack {
            Color.baeminBackgroundWhite.ignoresSafeArea()
            Text("\(title) 탭")
                .applyBaeminFont(.title_sb_18)
                .foregroundColor(.baeminGray700)
        }
    }
}

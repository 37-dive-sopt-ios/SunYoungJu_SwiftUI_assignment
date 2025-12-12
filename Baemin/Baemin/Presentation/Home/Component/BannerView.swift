//
//  BannerView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct BannerView: View {
    let imageNames: [String]
    
    @State private var currentIndex: Int = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(imageNames.indices, id: \.self) { idx in
                Image(imageNames[idx])
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .tag(idx)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
}

//
//  HomeView.swift
//  Baemin
//
//  Created by sun on 12/10/25
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            Color.baeminBackgroundWhite
                .ignoresSafeArea()
            
            ScrollView {
                LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                    
                    HeaderView()
                        .padding(.bottom, 4)
                    
                    Section {
                        FeedView { _ in }
                        MarketView { _ in }
                        
                        BannerView(imageNames: ["banner1", "banner2", "banner3"])
                            .frame(height: 180)
                        
                        RankingView(
                            rankings: Ranking.mocks,
                            title: "우리 동네 한그릇 인기 랭킹",
                            subtitle: nil
                        )
                        
                        RecentView(
                            recents: Recent.mocks,
                            title: "최근에 주문했어요",
                            subtitle: nil
                        )
                        
                        DiscountView(
                            discounts: Discount.mocks,
                            title: "무조건 할인하는 가게",
                            subtitle: "2천원 이상 또는 15% 이상 할인중"
                        )
                        
                    } header: {
                        VStack(spacing: 0) {
                            SearchBarView(
                                text: $searchText,
                                placeholder: "찾아라! 맛있는 음식과 맛집"
                            ) { _ in }
                            .padding(.horizontal, 10)
                            .padding(.bottom, 12)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.baeminBackgroundWhite)
                    }
                }
            }
            .padding(.top, 1)
            .scrollIndicators(.hidden)
        }
    }
}

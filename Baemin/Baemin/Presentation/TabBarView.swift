//
//  TabBarView.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: BaeminTab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Image("home")
                    .renderingMode(.template)
                Text(BaeminTab.home.title)
                    .applyBaeminFont(.body_r_10)
            }
            .tag(BaeminTab.home)
            
            NavigationStack {
                PlaceholderTabView(title: BaeminTab.shopping.title)
            }
            .tabItem {
                Image("shopping")
                    .renderingMode(.template)
                Text(BaeminTab.shopping.title)
                    .applyBaeminFont(.body_r_10)
            }
            .tag(BaeminTab.shopping)
            
            NavigationStack {
                PlaceholderTabView(title: BaeminTab.wish.title)
            }
            .tabItem {
                Image("heart")
                    .renderingMode(.template)
                Text(BaeminTab.wish.title)
                    .applyBaeminFont(.body_r_10)
            }
            .tag(BaeminTab.wish)
            
            NavigationStack {
                PlaceholderTabView(title: BaeminTab.orders.title)
            }
            .tabItem {
                Image("order")
                    .renderingMode(.template)
                Text(BaeminTab.orders.title)
                    .applyBaeminFont(.body_r_10)
            }
            .tag(BaeminTab.orders)
            
            NavigationStack {
                PlaceholderTabView(title: BaeminTab.my.title)
            }
            .tabItem {
                Image("my")
                    .renderingMode(.template)
                Text(BaeminTab.my.title)
                    .applyBaeminFont(.body_r_10)
            }
            .tag(BaeminTab.my)
        }
        .tint(.baeminBlack)
    }
}

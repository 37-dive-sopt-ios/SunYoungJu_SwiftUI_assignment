//
//  MarketCategory.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

struct MarketCategory: Identifiable, Hashable, CategoryItemType {
    let id: Int
    let title: String
    let imageName: String
}

extension MarketCategory {
    static let mocks: [MarketCategory] = [
        MarketCategory(id: 0, title: "B마트",    imageName: "nyangi1"),
        MarketCategory(id: 1, title: "CU",      imageName: "nyangi2"),
        MarketCategory(id: 2, title: "이마트슈퍼", imageName: "nyangi3"),
        MarketCategory(id: 3, title: "홈플러스", imageName: "nyangi4"),
        MarketCategory(id: 4, title: "GS25",    imageName: "nyangi5"),
        MarketCategory(id: 5, title: "이마트",   imageName: "nyangi6")
    ]
}

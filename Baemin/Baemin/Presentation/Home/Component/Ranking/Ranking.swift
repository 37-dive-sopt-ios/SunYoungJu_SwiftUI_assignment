//
//  Ranking.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

struct Ranking: Identifiable, Hashable {
    let id: Int
    let brandName: String
    let rating: Double
    let reviewCount: Int
    let title: String
    let discountPercent: Int?
    let price: Int
    let originalPrice: Int?
    let minOrderPrice: Int?
    let thumbnailName: String
}

extension Ranking {
    static let mocks: [Ranking] = [
        Ranking(
            id: 0,
            brandName: "백억보쌈제육...",
            rating: 5.0,
            reviewCount: 1_973,
            title: "[든든한 한끼] 보쌈 막국수",
            discountPercent: 25,
            price: 12_000,
            originalPrice: 16_000,
            minOrderPrice: nil,
            thumbnailName: "hangeureut1"
        ),
        Ranking(
            id: 1,
            brandName: "백억보쌈제육...",
            rating: 5.0,
            reviewCount: 1_973,
            title: "(1인) 피자 + 사이드 Set",
            discountPercent: 20,
            price: 12_000,
            originalPrice: 16_000,
            minOrderPrice: nil,
            thumbnailName: "hangeureut2"
        ),
        Ranking(
            id: 2,
            brandName: "백억보쌈제육...",
            rating: 5.0,
            reviewCount: 1_973,
            title: "[든든한 한끼] 보쌈막국수",
            discountPercent: 25,
            price: 12_000,
            originalPrice: 16_000,
            minOrderPrice: nil,
            thumbnailName: "hangeureut3"
        ),
        Ranking(
            id: 3,
            brandName: "백억보쌈제육...",
            rating: 5.0,
            reviewCount: 1_973,
            title: "(1인) 피자 + 사이드 Set",
            discountPercent: 20,
            price: 12_000,
            originalPrice: 16_000,
            minOrderPrice: nil,
            thumbnailName: "hangeureut4"
        )
    ]
}

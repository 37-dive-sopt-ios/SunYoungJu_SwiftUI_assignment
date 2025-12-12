//
//  RankingItemViewData.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

struct RankingItemViewData: Identifiable, Hashable {
    let id: Int
    let brandName: String
    let ratingText: String
    let reviewCountText: String
    let title: String
    let discountPercentText: String?
    let priceText: String
    let originalPriceText: String?
    let minOrderText: String
    let thumbnailName: String
}

extension RankingItemViewData {
    init(from model: Ranking, formatter: NumberFormatter = .decimalKrFormatter) {
        id = model.id
        brandName = model.brandName
        
        ratingText = String(format: "%.1f", model.rating)
        
        reviewCountText =
            formatter.string(from: NSNumber(value: model.reviewCount)) ?? "\(model.reviewCount)"
        
        title = model.title
        
        discountPercentText = model.discountPercent.map { "\($0)%" }
        
        priceText =
            (formatter.string(from: NSNumber(value: model.price)) ?? "\(model.price)") + "원"
        
        originalPriceText = model.originalPrice.map {
            (formatter.string(from: NSNumber(value: $0)) ?? "\($0)") + "원"
        }
        
        if let minOrder = model.minOrderPrice, minOrder > 0 {
            let text = formatter.string(from: NSNumber(value: minOrder)) ?? "\(minOrder)"
            minOrderText = "최소주문금액 \(text)원"
        } else {
            minOrderText = "최소주문금액 없음"
        }
        
        thumbnailName = model.thumbnailName
    }
}

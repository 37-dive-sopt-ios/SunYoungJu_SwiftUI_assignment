//
//  RecentItemViewData.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

struct RecentItemViewData: Identifiable, Hashable {
    let id: Int
    let thumbnailName: String
    let recentOrderText: String
    let name: String
    let ratingText: String
    let reviewCountText: String
    let deliveryTimeText: String
    let deliveryFeeText: String
    let isFreeDelivery: Bool
    
    let hasClub: Bool
    let hasPickup: Bool
    let hasReservation: Bool
}

extension RecentItemViewData {
    init(from model: Recent, formatter: NumberFormatter = .decimalKrFormatter) {
        id = model.id
        thumbnailName = model.thumbnailName
        recentOrderText = model.recentOrderText ?? "최근 주문한 가게"
        name = model.name
        ratingText = String(format: "%.1f", model.rating)
        reviewCountText =
            formatter.string(from: NSNumber(value: model.reviewCount)) ?? "\(model.reviewCount)"
        deliveryTimeText = model.deliveryTimeText
        deliveryFeeText = model.deliveryFeeText
        isFreeDelivery = (model.deliveryFeeText == "무료배달")
        
        hasClub = model.tags.contains("배민클럽")
        hasPickup = model.tags.contains("픽업가능")
        hasReservation = model.tags.contains("예약가능")
    }
}

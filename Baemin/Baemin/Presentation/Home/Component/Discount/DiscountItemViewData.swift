//
//  DiscountItemViewData.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

struct DiscountItemViewData: Identifiable, Hashable {
    let id: Int
    let thumbnailName: String
    let name: String
    let ratingText: String
    let reviewCountText: String
    let deliveryTimeText: String
    let deliveryFeeText: String
    let isFreeDelivery: Bool
    
    let hasClub: Bool
    let hasCoupon: Bool
    let hasPickup: Bool
    let hasHygiene: Bool
}

extension DiscountItemViewData {
    init(from model: Discount, formatter: NumberFormatter = .decimalKrFormatter) {
        id = model.id
        thumbnailName = model.thumbnailName
        name = model.name
        ratingText = String(format: "%.1f", model.rating)
        reviewCountText =
            formatter.string(from: NSNumber(value: model.reviewCount)) ?? "\(model.reviewCount)"
        deliveryTimeText = model.deliveryTimeText
        deliveryFeeText = model.deliveryFeeText
        isFreeDelivery = (model.deliveryFeeText == "무료배달")
        
        hasClub = model.tags.contains("배민클럽")
        hasCoupon = model.tags.contains("소비쿠폰")
        hasPickup = model.tags.contains("픽업가능")
        hasHygiene = model.tags.contains("위생인증")
    }
}

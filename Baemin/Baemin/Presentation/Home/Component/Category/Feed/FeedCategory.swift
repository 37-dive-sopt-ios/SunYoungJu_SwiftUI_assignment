//
//  FeedCategory.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

struct FeedCategory: Identifiable, Hashable, CategoryItemType {
    let id: Int
    let title: String
    let imageName: String
}

extension FeedCategory {
    static let mocks: [FeedCategory] = [
        FeedCategory(id: 0,  title: "한그릇",    imageName: "nunmeongi1"),
        FeedCategory(id: 1,  title: "치킨",      imageName: "nunmeongi2"),
        FeedCategory(id: 2,  title: "카페·디저트", imageName: "nunmeongi3"),
        FeedCategory(id: 3,  title: "피자",      imageName: "nunmeongi4"),
        FeedCategory(id: 4,  title: "분식",      imageName: "nunmeongi5"),
        FeedCategory(id: 5,  title: "고기",      imageName: "nunmeongi6"),
        FeedCategory(id: 6,  title: "찜·탕",     imageName: "nunmeongi7"),
        FeedCategory(id: 7,  title: "야식",      imageName: "nunmeongi8"),
        FeedCategory(id: 8,  title: "패스트푸드", imageName: "nunmeongi9"),
        FeedCategory(id: 9,  title: "픽업",      imageName: "nunmeongi10")
    ]
}

//
//  BaeminTab.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

enum BaeminTab: Hashable {
    case home, shopping, wish, orders, my
    
    var title: String {
        switch self {
        case .home: return "홈"
        case .shopping: return "장보기·쇼핑"
        case .wish: return "찜"
        case .orders: return "주문내역"
        case .my: return "마이배민"
        }
    }
}

//
//  NumberFormatter+.swift
//  Baemin
//
//  Created by sun on 12/10/25.
//

import Foundation

extension NumberFormatter {
    static let decimalKrFormatter: NumberFormatter = {
        let f = NumberFormatter()
        f.numberStyle = .decimal
        return f
    }()
}

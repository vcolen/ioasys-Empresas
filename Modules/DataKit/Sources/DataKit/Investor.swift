//
//  Investor.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation

public struct Investor: Codable {
    let id: Int
    let investorName, email, city, country: String
    let balance: Int
    let photo: String
    let portfolio: Portfolio
    let portfolioValue: Int
    let firstAccess, superAngel: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case investorName = "investor_name"
        case email, city, country, balance, photo, portfolio
        case portfolioValue = "portfolio_value"
        case firstAccess = "first_access"
        case superAngel = "super_angel"
    }
}

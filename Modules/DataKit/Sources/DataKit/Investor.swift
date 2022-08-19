// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let investor = try? newJSONDecoder().decode(Investor.self, from: jsonData)

import Foundation

// MARK: - Investor
public struct Investor: Codable {
    let investor: InvestorClass
    let enterprise: String?
    let success: Bool
}

// MARK: - InvestorClass
public struct InvestorClass: Codable {
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

// MARK: - Portfolio
public struct Portfolio: Codable {
    let enterprisesNumber: Int
    let enterprises: [String]

    enum CodingKeys: String, CodingKey {
        case enterprisesNumber = "enterprises_number"
        case enterprises
    }
}

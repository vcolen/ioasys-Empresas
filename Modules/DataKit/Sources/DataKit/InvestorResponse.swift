//
//  InvestorResponse.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation

public struct InvestorResponse: Codable {
    let investor: Investor
    let enterprise: String?
    let success: Bool
}

//
//  Portfolio.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation

public struct Portfolio: Codable {
    let enterprisesNumber: Int
    let enterprises: [String]

    enum CodingKeys: String, CodingKey {
        case enterprisesNumber = "enterprises_number"
        case enterprises
    }
}

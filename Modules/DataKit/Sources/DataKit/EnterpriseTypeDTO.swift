//
//  EnterpriseTypeDTO.swift
//
//
//  Created by Victor Colen on 19/08/22.
//

import Foundation

public struct EnterpriseTypeDTO: Codable {
    let id: Int
    let enterpriseTypeName: String

    enum CodingKeys: String, CodingKey {
        case id
        case enterpriseTypeName = "enterprise_type_name"
    }
}

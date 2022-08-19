//
//  EnterpriseDTO.swift
//
//
//  Created by Victor Colen on 19/08/22.
//

import Foundation

public struct EnterpriseDTO: Codable {
    let id: Int
    let emailEnterprise, facebook, twitter, linkedin: String?
    let phone: String?
    let ownEnterprise: Bool
    let enterpriseName, photo, enterpriseDescription, city: String
    let country: String
    let value, sharePrice: Int
    let enterpriseType: EnterpriseTypeDTO

    enum CodingKeys: String, CodingKey {
        case id
        case emailEnterprise = "email_enterprise"
        case facebook, twitter, linkedin, phone
        case ownEnterprise = "own_enterprise"
        case enterpriseName = "enterprise_name"
        case photo
        case enterpriseDescription = "description"
        case city, country, value
        case sharePrice = "share_price"
        case enterpriseType = "enterprise_type"
    }
}

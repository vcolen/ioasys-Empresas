//
//  FetchEnterpriseByIdResponse.swift
//
//
//  Created by Victor Colen on 19/08/22.
//

import Foundation

public struct FetchEnterpriseByIdResponse: Codable {
    let enterprise: EnterpriseDTO
    let success: Bool
}

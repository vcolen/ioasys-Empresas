//
//  File.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation

public protocol LoginRepositoryProtocol {
    func loginUser(email: String, password: String)
}

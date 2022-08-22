//
//  LoginRemoteDataSourceProtocol.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation

public protocol LoginRemoteDataSourceProtocol {
    func loginUser(
        email: String,
        password: String,
        completion: @escaping (HTTPURLResponse) -> Void
    )
}

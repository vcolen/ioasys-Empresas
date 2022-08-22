//
//  File.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation
import DataKit

class LoginRemoteDataSource: LoginRemoteDataSourceProtocol {
    public func loginUser(
        email: String,
        password: String,
        completion: @escaping (HTTPURLResponse) -> Void
    ) {
        let email = "testeapple@ioasys.com.br"
        let password = "12341234"
        guard let data: Data = "email=\(email)&password=\(password)&grant_type=password"
            .data(using: .utf8) else {
            return
        }

        Network.request(
            httpMethod: "POST",
            httpBody: data,
            dataType: InvestorResponse.self,
            url: "https://empresas.ioasys.com.br/api/v1/users/auth/sign_in"
        ) { _, response in
            guard let response = response as? HTTPURLResponse else {
                return
            }
            completion(response)
        }
    }
}

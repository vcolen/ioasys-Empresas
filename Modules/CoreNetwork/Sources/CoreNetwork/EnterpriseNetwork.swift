//
//  EnterpriseNetwork.swift
//  ioasys books
//
//  Created by Victor Colen on 15/02/22.
//

import Foundation
import DataKit

public struct EnterpriseNetwork {

    public static func loginUser(
        //        email: String,
        //        password: String,
        completion: @escaping (HTTPURLResponse) -> Void
    ) {
        guard let data: Data = "email=testeapple@ioasys.com.br&password=12341234&grant_type=password"
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

    public static func fetchCompanies(
        client: String,
        accessToken: String,
        uid: String,
        completion: @escaping ((Result<FetchEnterprisesResponse, Error>) -> Void)
    ) {
        Network.request(
            headers: [
                "client": client,
                "access-token": accessToken,
                "uid": uid
            ],
            dataType: FetchEnterprisesResponse.self,
            url: "https://empresas.ioasys.com.br/api/v1/enterprises"
        ) { data, _ in
            completion(data)
        }
    }

    public static func fetchCompaniesByName(
        name: String,
        client: String,
        accessToken: String,
        uid: String,
        completion: @escaping ((Result<FetchEnterprisesResponse, Error>) -> Void)
    ) {
        Network.request(
            headers: [
                "client": client,
                "access-token": accessToken,
                "uid": uid
            ],
            dataType: FetchEnterprisesResponse.self,
            url: "https://empresas.ioasys.com.br/api/v1/enterprises?name=\(name)"
        ) { data, _ in
            completion(data)
        }
    }

    public static func fetchCompanyById(
        id: String,
        client: String,
        accessToken: String,
        uid: String,
        completion: @escaping ((Result<FetchEnterpriseByIdResponse, Error>) -> Void)
    ) {
        Network.request(
            headers: [
                "client": client,
                "access-token": accessToken,
                "uid": uid
            ],
            dataType: FetchEnterpriseByIdResponse.self,
            url: "https://empresas.ioasys.com.br/api/v1/enterprises/\(id)"
        ) { data, _ in
            completion(data)
        }
    }
}

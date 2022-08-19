//
//  Network.swift
//  ioasys books
//
//  Created by Victor Colen on 15/02/22.
//

import Foundation

public struct Network {

    public static func loginUser(
        //        email: String,
        //        password: String,
        completion: @escaping ((Data?, URLResponse?, Error?) -> Void)
    ) {
        let postUrl = URL(string: "https://empresas.ioasys.com.br/api/v1/users/auth/sign_in")
        guard let postUrl = postUrl else {
            return
        }
        var request = URLRequest(url: postUrl)
        guard let data: Data = "email=testeapple@ioasys.com.br&password=12341234&grant_type=password"
            .data(using: .utf8) else {
            return
        }
        request.httpMethod = "POST"
        request.httpBody = data
        URLSession.shared.dataTask(with: request) { data, response, error in
            completion(data, response, error)
        }.resume()
    }

    public static func fetchCompanies(
        client: String,
        accessToken: String,
        uid: String,
        completion: @escaping ((Data?, URLResponse?, Error?) -> Void)
    ) {
        guard let url = URL(string: "https://empresas.ioasys.com.br/api/v1/enterprises") else { return }
        var getRequest = URLRequest(url: url)
        getRequest.addValue("\(client)", forHTTPHeaderField: "client")
        getRequest.addValue("\(accessToken)", forHTTPHeaderField: "access-token")
        getRequest.addValue("\(uid)", forHTTPHeaderField: "uid")
        URLSession.shared.dataTask(with: getRequest) { data, response, error in
            completion(data, response, error)
        }.resume()
    }

    public static func fetchCompaniesByName(
        name: String,
        client: String,
        accessToken: String,
        uid: String,
        completion: @escaping ((Data?, URLResponse?, Error?) -> Void)
    ) {
        guard let url = URL(string: "https://empresas.ioasys.com.br/api/v1/enterprises?name=\(name)") else {
            return
        }
        var getRequest = URLRequest(url: url)
        getRequest.addValue("\(client)", forHTTPHeaderField: "client")
        getRequest.addValue("\(accessToken)", forHTTPHeaderField: "access-token")
        getRequest.addValue("\(uid)", forHTTPHeaderField: "uid")
        URLSession.shared.dataTask(with: getRequest) { data, response, error in
            completion(data, response, error)
        }.resume()
    }

    public static func fetchCompanyById(
        id: String,
        client: String,
        accessToken: String,
        uid: String,
        completion: @escaping ((Data?, URLResponse?, Error?) -> Void)
    ) {
        guard let url = URL(string: "https://empresas.ioasys.com.br/api/v1/enterprises/\(id)") else {
            return
        }
        var getRequest = URLRequest(url: url)
        getRequest.addValue("\(client)", forHTTPHeaderField: "client")
        getRequest.addValue("\(accessToken)", forHTTPHeaderField: "access-token")
        getRequest.addValue("\(uid)", forHTTPHeaderField: "uid")
        URLSession.shared.dataTask(with: getRequest) { data, response, error in
            completion(data, response, error)
        }.resume()
    }

}

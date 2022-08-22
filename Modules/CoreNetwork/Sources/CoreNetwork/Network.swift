//
//  NetworkService.swift
//  CleanMovies
//
//  Created by Victor Colen on 27/03/22.
//

import Foundation

// swiftlint:disable function_parameter_count
protocol APIClientProtocol {
    static func request<T: Codable>(
        httpMethod: String?,
        headers: [String: String]?,
        httpBody: Data?,
        dataType: T.Type,
        url: String,
        completion: @escaping ((Result<T, Error>, URLResponse) -> Void)
    )
}

class Network: APIClientProtocol {
    static func request<T>(
        httpMethod: String? = "GET",
        headers: [String: String]? = nil,
        httpBody: Data? = nil,
        dataType: T.Type,
        url: String,
        completion: @escaping ((Result<T, Error>, URLResponse) -> Void)
    ) where T: Codable {

        guard let url = URL(string: url) else { return }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod

        if let httpBody = httpBody {
            urlRequest.httpBody = httpBody
        }

        if let headers = headers {
            for header in headers {
                urlRequest.addValue(header.value, forHTTPHeaderField: header.key)
            }
        }

        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            DispatchQueue.main.async {
                guard let response = response else {
                    return
                }

                if let error = error {
                    completion(.failure(error), response)
                } else if let data = data {
                    do {
                        let safeData = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(safeData), response)
                    } catch {
                        completion(.failure(error), response)
                    }
                }
            }
        }.resume()
    }
}

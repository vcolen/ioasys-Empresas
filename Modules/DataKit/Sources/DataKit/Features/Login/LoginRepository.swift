//
//  File.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation
import CoreKit
import InjectionKit

public class LoginRepository: LoginRepositoryProtocol {
    @Injected var remote: LoginRemoteDataSourceProtocol

    public func loginUser(email: String, password: String) {
        remote.loginUser(email: email, password: password) { response in
            if response.statusCode == 200 {
//            manda os dados pro coordinator
//            client: response.value(forHTTPHeaderField: "client") ?? "",
//            accessToken: response.value(forHTTPHeaderField: "access-token") ?? "",
//            uid: response.value(forHTTPHeaderField: "uid") ?? ""
            }
        }
    }
}

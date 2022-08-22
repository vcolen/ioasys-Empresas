//
//  LoginUseCase.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation
import InjectionKit

public protocol LoginUseCaseProtocol {
    func loginUser(email: String, password: String)
}

public class LoginUseCase {
    // MARK: - Properties
    @Injected var loginRepositoryProtocol: LoginRepositoryProtocol

    // MARK: - Initializer
    public init() { }
}

extension LoginUseCase: LoginUseCaseProtocol {
    public func loginUser(email: String, password: String) {
        loginRepositoryProtocol.loginUser(email: email, password: password)
    }
}

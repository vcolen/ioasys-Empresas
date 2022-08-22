//
//  File.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation
import CoreApp
import CoreKit
import InjectionKit

public class LoginPresenter: BasePresenter<LoginViewable> {
    @Injected var loginUseCase: LoginUseCaseProtocol
    private let coordinator: LoginCoordinating

    init(coordinator: LoginCoordinating) {
        self.coordinator = coordinator
    }
}

extension LoginPresenter: LoginPresenting {
    public func loginUser(
        email: String,
        password: String,
        onLogin: () -> Void
    ) {
        loginUseCase.loginUser(email: email, password: password)
    }
}

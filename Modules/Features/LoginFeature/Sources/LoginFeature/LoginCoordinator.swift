//
//  File.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation
import CoreApp
import UIKit

public class LoginCoordinator: LoginCoordinating {
    // MARK: - Properties
    private weak var rootViewController: UINavigationController?
    private let loginHandler: () -> Void

    // MARK: - Initializer
    init(
        rootViewController: UINavigationController,
        onLogin loginHandler: @escaping () -> Void
    ) {
        self.rootViewController = rootViewController
        self.loginHandler = loginHandler
    }
}

// MARK: - Coordinator
extension LoginCoordinator: Coordinator {
    public func start() {
        let presenter = LoginPresenter(coordinator: self)
    }
}

// MARK: - LoginCoordinating
extension LoginCoordinator {
    public func showHome() {
        loginHandler()
    }
}

//
//  LoginPresenting.swift
//
//
//  Created by Victor Colen on 22/08/22.
//

import Foundation
import CoreApp

public protocol LoginPresenting: Presenting {
    func loginUser(
        email: String,
        password: String,
        onLogin: @escaping () -> Void
    )
}

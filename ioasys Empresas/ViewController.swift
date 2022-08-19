//
//  ViewController.swift
//  ioasys Empresas
//
//  Created by Victor Colen on 19/08/22.
//

import UIKit
import CoreNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        Network.loginUser { data, response, _ in
            if let response = response as? HTTPURLResponse {
                Network.fetchCompanyById(
                    id: "1",
                    client: response.value(forHTTPHeaderField: "client") ?? "",
                    accessToken: response.value(forHTTPHeaderField: "access-token") ?? "",
                    uid: response.value(forHTTPHeaderField: "uid") ?? ""
                ) { data, _, _ in
                    print(data)
                }
            }
        }
    }

}

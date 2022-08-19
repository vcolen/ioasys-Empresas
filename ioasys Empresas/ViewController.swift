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
        EnterpriseNetwork.loginUser { response in
            if  response.statusCode == 200 {
                EnterpriseNetwork.fetchCompanyById(
                    id: "3",
                    client: response.value(forHTTPHeaderField: "client") ?? "",
                    accessToken: response.value(forHTTPHeaderField: "access-token") ?? "",
                    uid: response.value(forHTTPHeaderField: "uid") ?? ""
                ) { data in
                    print(data)
                }
            } else {
                print("deu ruim")
            }
        }
    }

}

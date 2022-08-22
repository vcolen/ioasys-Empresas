//
//  LoginViewController.swift
//  ioasys Empresas
//
//  Created by Victor Colen on 22/08/22.
//

import UIKit
import CoreNetwork

public class LoginViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
//        LoginRemoteDataSource().loginUser(email: "alo", password: "brenno") { response in
//            if  response.statusCode == 200 {
//                EnterpriseNetwork.fetchCompanyById(
//                    id: "3",
//                    client: response.value(forHTTPHeaderField: "client") ?? "",
//                    accessToken: response.value(forHTTPHeaderField: "access-token") ?? "",
//                    uid: response.value(forHTTPHeaderField: "uid") ?? ""
//                ) { data in
//                    print(data)
//                }
//            } else {
//                print("deu ruim")
//            }
       // }
    }

}

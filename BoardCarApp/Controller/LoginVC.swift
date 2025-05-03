//
//  LoginInVC.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit

class LoginVC: UIViewController {

    let loginView = LoginView()

    override func loadView() {
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.registerButton.addTarget(self, action: #selector(registerBtnTapped), for: .touchUpInside)
    }

    @objc func registerBtnTapped() {
        navigationController?.pushViewController(SignUpVC(), animated: true)
    }
}

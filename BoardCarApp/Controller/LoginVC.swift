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
        pushRegisterView()
        pushTabBarController()
        navigationController?.navigationBar.isHidden = true
    }

    private func pushRegisterView() {
        loginView.registerButton.addTarget(self, action: #selector(registerBtnTapped), for: .touchUpInside)
    }

    @objc func registerBtnTapped() {
        navigationController?.pushViewController(SignUpVC(), animated: true)
    }

    private func pushTabBarController() {
        loginView.loginBtn.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
    }

    @objc func loginBtnTapped() {
        print("버튼 클릭")
        let tabBarController = TabBarController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }
}

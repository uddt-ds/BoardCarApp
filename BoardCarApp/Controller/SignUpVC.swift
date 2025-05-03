//
//  SignUpVC.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit

class SignUpVC: UIViewController {

    let signUpView = SignUpView()

    override func loadView() {
        self.view = signUpView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        popView()
    }

    private func popView() {
        signUpView.registerBtn.addTarget(self, action: #selector(registerBtnTapped), for: .touchUpInside)
    }

    @objc private func registerBtnTapped() {
        navigationController?.popViewController(animated: true)
    }

}

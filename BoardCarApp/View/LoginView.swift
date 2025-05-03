//
//  LoginView.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit
import SnapKit

class LoginView: UIView {

    let logoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "logoImage")
        logoImage.contentMode = .scaleAspectFit
        return logoImage
    }()

    let idTextField: UITextField = {
        let txtField = UITextField()
        txtField.text = ""
        txtField.placeholder = "아이디를 입력해주세요"
        txtField.keyboardType = .default
        txtField.textColor = .black
        txtField.layer.cornerRadius = 13
        txtField.layer.borderWidth = 1
        txtField.layer.borderColor = UIColor.black.cgColor
        txtField.font = .boldSystemFont(ofSize: 15)
        txtField.backgroundColor = .lightGray
        return txtField
    }()

    let pwTextField: UITextField = {
        let txtField = UITextField()
        txtField.text = ""
        txtField.placeholder = "비밀번호를 입력해주세요"
        txtField.keyboardType = .default
        txtField.textColor = .black
        txtField.layer.cornerRadius = 13
        txtField.layer.borderWidth = 1
        txtField.layer.borderColor = UIColor.black.cgColor
        txtField.font = .boldSystemFont(ofSize: 15)
        txtField.backgroundColor = .lightGray
        return txtField
    }()

    lazy var loginBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("로그인", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        btn.backgroundColor = .purple
        btn.layer.cornerRadius = 13
        return btn
    }()

    lazy var findBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("아이디/비밀번호 찾기", for: .normal)
        btn.setTitleColor(.lightGray, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btn.backgroundColor = .none
        return btn
    }()

    let coinImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "coinImage")
        image.contentMode = .scaleAspectFit
        return image
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "신규 가입하고 2,000포인트 받기"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 10)
        return label
    }()

    lazy var  registerButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("회원가입", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .darkGray
        btn.layer.cornerRadius = 13
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }


    private func configureUI() {
        self.backgroundColor = .white

        [logoImage, idTextField, pwTextField, loginBtn, findBtn, coinImage, titleLabel, registerButton].forEach {
            self.addSubview($0)
        }

        logoImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(186)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(35)
        }

        idTextField.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(28)
            $0.trailing.equalToSuperview().offset(-28)
            $0.top.equalTo(logoImage.snp.bottom).offset(9)
            $0.height.equalTo(46)
//            $0.bottom.equalTo(pwTextField.snp.top).offset(20)
        }

        pwTextField.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(28)
            $0.trailing.equalToSuperview().offset(-28)
            $0.top.equalTo(idTextField.snp.bottom).offset(20)
            $0.height.equalTo(46)
        }

        loginBtn.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(26)
            $0.trailing.equalToSuperview().offset(-26)
            $0.top.equalTo(pwTextField.snp.bottom).offset(16)
            $0.height.equalTo(41)
        }

        findBtn.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(26)
            $0.trailing.equalToSuperview().offset(-26)
            $0.top.equalTo(loginBtn.snp.bottom).offset(11)
            $0.height.equalTo(17)
        }

        coinImage.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(128)
            $0.trailing.equalTo(titleLabel.snp.leading).offset(-2)
            $0.top.equalTo(findBtn.snp.bottom).offset(25)
            $0.width.height.equalTo(14)
        }

        titleLabel.snp.makeConstraints {
            $0.leading.equalTo(coinImage.snp.trailing).offset(2)
            $0.trailing.equalToSuperview().offset(-126)
            $0.top.equalTo(findBtn.snp.bottom).offset(25)
        }

        registerButton.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(121)
            $0.trailing.equalToSuperview().offset(-121)
            $0.top.equalTo(titleLabel.snp.bottom).offset(6)
        }
    }
}

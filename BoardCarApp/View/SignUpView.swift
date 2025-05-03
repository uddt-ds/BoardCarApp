//
//  SignUpView.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit

class SignUpView: UIView {

    let guideLabel: UILabel = {
        let label = UILabel()
        label.text = "회원 가입을 위해 \n정보를 입력해주세요"
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()

    let idLabel: UILabel = {
        let label = UILabel()
        label.text = "아이디를 입력해주세요"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()

    let pwLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호를 입력해주세요"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "이름을 입력해주세요"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()

    let idField: UITextField = {
        let idField = UITextField()
        idField.placeholder = "아이디"
        idField.textColor = .black
        idField.backgroundColor = .lightGray
        idField.layer.cornerRadius = 13
        idField.font = .systemFont(ofSize: 13)
        return idField
    }()

    let pwField: UITextField = {
        let pwField = UITextField()
        pwField.placeholder = "아이디"
        pwField.textColor = .black
        pwField.layer.cornerRadius = 13
        pwField.backgroundColor = .lightGray
        pwField.font = .systemFont(ofSize: 13)
        return pwField
    }()

    let nameField: UITextField = {
        let nameField = UITextField()
        nameField.placeholder = "아이디"
        nameField.textColor = .black
        nameField.backgroundColor = .lightGray
        nameField.layer.cornerRadius = 13
        nameField.font = .systemFont(ofSize: 13)
        return nameField
    }()

    lazy var registerBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("가입하기", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        btn.backgroundColor = .purple
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
        [guideLabel, idLabel, pwLabel, nameLabel, idField, pwField, nameField, registerBtn].forEach {
            self.addSubview($0)
        }
        
        guideLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(169)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(127)
        }

        idLabel.snp.makeConstraints {
            $0.top.equalTo(guideLabel.snp.bottom).offset(34)
            $0.leading.equalToSuperview().offset(24)
        }

        idField.snp.makeConstraints {
            $0.top.equalTo(idLabel.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
            $0.height.equalTo(40)
        }

        pwLabel.snp.makeConstraints {
            $0.top.equalTo(idField.snp.bottom).offset(22)
            $0.leading.equalToSuperview().offset(24)
        }

        pwField.snp.makeConstraints {
            $0.top.equalTo(pwLabel.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
            $0.height.equalTo(40)
        }

        nameLabel.snp.makeConstraints {
            $0.top.equalTo(pwField.snp.bottom).offset(22)
            $0.leading.equalToSuperview().offset(24)
        }

        nameField.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
            $0.height.equalTo(40)
        }

        registerBtn.snp.makeConstraints {
            $0.top.equalTo(nameField.snp.bottom).offset(32)
            $0.leading.equalToSuperview().offset(95)
            $0.trailing.equalToSuperview().offset(-95)
            $0.height.equalTo(44)
        }

    }
}

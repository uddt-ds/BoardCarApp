//
//  RentBtnView.swift
//  BoardCarApp
//
//  Created by Lee on 5/4/25.
//

import Foundation
import UIKit

class RentBtnView: UIView {

    lazy var rentBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("대여하기", for: .normal)
        btn.setTitle("반납하기", for: .selected)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.purple, for: .selected)
        btn.backgroundColor = .purple
        btn.layer.cornerRadius = 13
        btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }

    private func configureUI() {
        self.addSubview(rentBtn)

        rentBtn.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

    }

    @objc private func buttonTapped() {
        print("버튼 클릭")
        rentBtn.isSelected.toggle()
        print(rentBtn.isSelected)
        setButton()
    }

    private func setButton() {
        if rentBtn.isSelected {
            rentBtn.backgroundColor = .white
            rentBtn.layer.borderWidth = 1
            rentBtn.layer.borderColor = UIColor.purple.cgColor
        } else {
            rentBtn.backgroundColor = .purple
        }
    }
}

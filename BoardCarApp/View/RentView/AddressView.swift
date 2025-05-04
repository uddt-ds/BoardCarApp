//
//  AddressView.swift
//  BoardCarApp
//
//  Created by Lee on 5/4/25.
//

import Foundation
import UIKit

class AddressView: UIView {

    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 13
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        return view
    }()

    let searchImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "FindBoardIcon")
        return imageView
    }()

    let adressField: UITextField = {
        let adress = UITextField()
        adress.placeholder = "주소를 입력해주세요"
        adress.textColor = .black
        adress.font = .systemFont(ofSize: 15)
        return adress
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
        self.addSubview(containerView)

        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        makeContainerView()
    }

    private func makeContainerView() {
        [searchImage, adressField].forEach {
            containerView.addSubview($0)
        }

        searchImage.snp.makeConstraints {
            $0.width.height.equalTo(41)
            $0.leading.equalToSuperview().offset(4)
            $0.centerY.equalToSuperview()
        }

        adressField.snp.makeConstraints {
            $0.leading.equalTo(searchImage.snp.trailing).offset(24)
            $0.trailing.equalToSuperview().offset(-11)
            $0.top.equalToSuperview().offset(11)
            $0.bottom.equalToSuperview().offset(-11)
        }
    }
}

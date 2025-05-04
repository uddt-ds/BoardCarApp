//
//  ShareView.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit

class ShareView: UIView {

    let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 18
        view.backgroundColor = .white
        return view
    }()

    let nameField: UITextField = {
        let nameField = UITextField()
        nameField.placeholder = "킥보드 이름"
        nameField.textColor = .black
        nameField.layer.cornerRadius = 7
        nameField.layer.borderWidth = 1
        nameField.layer.borderColor = UIColor.gray.cgColor
        return nameField
    }()

    let pickerView: UIPickerView = {
        let pickerView = UIPickerView()
        return pickerView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func configureUI() {

    }
}

//
//  RentVC.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit
import NMapsMap
import SnapKit

class RentVC: UIViewController {

    let mapView = NMFMapView()
    let addressView = AddressView()
    let rentBtnView = RentBtnView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUPMap()
        setMapViewConstraint()
    }

    private func setUPMap() {
        [mapView, addressView, rentBtnView].forEach {
            view.addSubview($0)
        }

        MapConfigurator.applyDefaultSettings(to: mapView)
    }

    private func setMapViewConstraint() {
        mapView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        addressView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(60)
            $0.leading.equalToSuperview().offset(21)
            $0.trailing.equalToSuperview().offset(-21)
            $0.height.equalTo(44)
        }

        rentBtnView.snp.makeConstraints {
            $0.height.equalTo(40)
            $0.leading.equalToSuperview().offset(121)
            $0.trailing.equalToSuperview().offset(-121)
            $0.bottom.equalToSuperview().offset(-114)
        }
    }
}

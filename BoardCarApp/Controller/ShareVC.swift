//
//  ShareVC.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit
import SnapKit
import NMapsMap

class ShareVC: UIViewController {

    let shareView = ShareView()
    let mapView = NMFMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setMapView()
        setNaverMapConstraint()
    }

    private func setMapView() {
        view.addSubview(mapView)

        MapConfigurator.applyDefaultSettings(to: mapView)
    }

    private func setNaverMapConstraint() {
        mapView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

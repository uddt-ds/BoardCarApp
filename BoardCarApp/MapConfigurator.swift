//
//  MapConfigurator.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import NMapsMap
import UIKit

struct MapConfigurator {
    static func applyDefaultSettings(to mapView: NMFMapView) {
        mapView.mapType = .basic
        mapView.positionMode = .normal
        mapView.zoomLevel = 14
        let center = NMGLatLng(lat: 37.5665, lng: 126.9780)
        mapView.moveCamera(NMFCameraUpdate(position: NMFCameraPosition(center, zoom: 14)))
    }
}

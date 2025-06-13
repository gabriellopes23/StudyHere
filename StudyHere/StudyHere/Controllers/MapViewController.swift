//
//  MapViewController.swift
//  StudyHere
//
//  Created by Gabriel Lopes on 13/06/25.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    let mapView = MKMapView()
    let filterButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        style()
        layout()
    }
}

// MARK: - Extensions
extension MapViewController {
    func style() {
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        var config = UIButton.Configuration.glass()
        config.title = "Filtros"
        config.image = UIImage(systemName: "mappin.and.ellipse")
        config.imagePadding = 8
        config.baseBackgroundColor = .secondarySystemBackground
        config.baseForegroundColor = .label
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        filterButton.configuration = config
        filterButton.addTarget(self, action: #selector(showFilters), for: .primaryActionTriggered)
    }
    
    func layout() {
        view.addSubview(mapView)
        view.addSubview(filterButton)
        
        // MapView
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // FilterButton
        NSLayoutConstraint.activate([
            filterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            filterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            filterButton.widthAnchor.constraint(equalToConstant: 150),
            filterButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

// MARK: - Actions
extension MapViewController {
    @objc func showFilters() {
        // TODO: Implement this!
    }
}

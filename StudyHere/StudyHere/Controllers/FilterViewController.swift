//
//  FilterViewController.swift
//  StudyHere
//
//  Created by Gabriel Lopes on 13/06/25.
//

import UIKit

class FilterViewController: UIViewController {
    
    let titleLabel = UILabel()
    let typeLabel = UILabel()
    let amenitiesLabel = UILabel()
    
    let typeStackView = UIStackView()
    let typeOption1 = FilterRowView(title: "Estudo Silencioso")
    let typeOption2 = FilterRowView(title: "Cafeteria")
    let typeOption3 = FilterRowView(title: "Coworking")
    
    let amenitiesStackView = UIStackView()
    let amenitiesOption1 = FilterRowView(title: "WI-FI")
    let amenitiesOption2 = FilterRowView(title: "Tomadas")
    let amenitiesOption3 = FilterRowView(title: "Café Barato")
    
    override func viewDidLoad() {
        style()
        layout()
    }
}

// MARK: - Extensions
extension FilterViewController {
    private func style() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Filtros"
        titleLabel.font = UIFont.systemFont(ofSize: 42, weight: .bold)
        
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        typeLabel.text = "Por tipo"
        typeLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        typeStackView.translatesAutoresizingMaskIntoConstraints = false
        typeStackView.axis = .vertical
        typeStackView.spacing = 10
        typeStackView.layer.cornerRadius = 12
        typeStackView.backgroundColor = .secondarySystemBackground
        
        amenitiesLabel.translatesAutoresizingMaskIntoConstraints = false
        amenitiesLabel.text = "Por Comodidades"
        amenitiesLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        amenitiesStackView.translatesAutoresizingMaskIntoConstraints = false
        amenitiesStackView.axis = .vertical
        amenitiesStackView.spacing = 10
        amenitiesStackView.layer.cornerRadius = 12
        amenitiesStackView.backgroundColor = .secondarySystemBackground
    }
    
    private func layout() {
        view.addSubview(titleLabel)
        view.addSubview(typeLabel)
        
        typeStackView.addArrangedSubview(typeOption1)
        typeStackView.addArrangedSubview(makeDivider())
        typeStackView.addArrangedSubview(typeOption2)
        typeStackView.addArrangedSubview(makeDivider())
        typeStackView.addArrangedSubview(typeOption3)
        view.addSubview(typeStackView)
        
        view.addSubview(amenitiesLabel)
        
        amenitiesStackView.addArrangedSubview(amenitiesOption1)
        amenitiesStackView.addArrangedSubview(makeDivider())
        amenitiesStackView.addArrangedSubview(amenitiesOption2)
        amenitiesStackView.addArrangedSubview(makeDivider())
        amenitiesStackView.addArrangedSubview(amenitiesOption3)
        view.addSubview(amenitiesStackView)
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 5),
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            
            typeLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 3),
            typeLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            typeStackView.topAnchor.constraint(equalToSystemSpacingBelow: typeLabel.bottomAnchor, multiplier: 1),
            typeStackView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: typeStackView.trailingAnchor, multiplier: 2)
        ])
        
        NSLayoutConstraint.activate([
            amenitiesLabel.topAnchor.constraint(equalToSystemSpacingBelow: typeStackView.bottomAnchor, multiplier: 2),
            amenitiesLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            amenitiesStackView.topAnchor.constraint(equalToSystemSpacingBelow: amenitiesLabel.bottomAnchor, multiplier: 2),
            amenitiesStackView.leadingAnchor.constraint(equalTo: typeStackView.leadingAnchor),
            amenitiesStackView.trailingAnchor.constraint(equalTo: typeStackView.trailingAnchor)
        ])
    }
    
    private func makeDivider() -> UIView {
        let container = UIView()
        let divider = UIView()
        divider.backgroundColor = .secondarySystemFill
        divider.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(divider)
        
        NSLayoutConstraint.activate([
            divider.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            divider.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -16),
            divider.heightAnchor.constraint(equalToConstant: 1),
            divider.centerYAnchor.constraint(equalTo: container.centerYAnchor)
        ])
        
        return container
    }
}

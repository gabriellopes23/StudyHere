//
//  PlaceDetailViewController.swift
//  StudyHere
//
//  Created by Gabriel Lopes on 14/06/25.
//

import UIKit

class PlaceDetailViewController: UIViewController {
    
    let imageView = UIImageView()
    
    let stackView = UIStackView()
    let titleLabel = UILabel()
    let starImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
}

// MARK: - Extension
extension PlaceDetailViewController {
    private func style() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "imagePlaceDetail")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.backgroundColor = .systemBackground
        stackView.layer.cornerRadius = 12
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Café das Letras"
        titleLabel.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        
        starImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        view.addSubview(imageView)
        
        stackView.addArrangedSubview(titleLabel)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: stackView.topAnchor, multiplier: 1),
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: stackView.leadingAnchor, multiplier: 1),
            
            
        ])
    }
}

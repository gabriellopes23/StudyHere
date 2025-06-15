//
//  FilterRow.swift
//  StudyHere
//
//  Created by Gabriel Lopes on 13/06/25.
//

import UIKit

class FilterRowView: UIView {
    
    let stackView = UIStackView()
    let checkImage = UIImageView(image: UIImage(systemName: "circle"))
    let titleLabel = UILabel()
    let toggle = UISwitch()
    
    init(title: String) {
        super.init(frame: .zero)
        
        titleLabel.text = title
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Extensions
extension FilterRowView {
    private func style() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        
        // checkImage
        checkImage.translatesAutoresizingMaskIntoConstraints = false
        checkImage.contentMode = .scaleAspectFit
        checkImage.clipsToBounds = true
        
        // titleLabel
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.text = "Estudo silencioso"
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        // Toggle
        toggle.translatesAutoresizingMaskIntoConstraints = false
        toggle.isOn = false
        toggle.addTarget(self, action: #selector(toggleChanged(_:)), for: .valueChanged)
        
    }
    
    private func layout() {
        addSubview(stackView)
        
        stackView.addArrangedSubview(checkImage)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(toggle)
        
        // Components
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            checkImage.topAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1),
            checkImage.leadingAnchor.constraint(equalToSystemSpacingAfter: stackView.leadingAnchor, multiplier: 1),
            checkImage.widthAnchor.constraint(equalToConstant: 25),
            checkImage.heightAnchor.constraint(equalToConstant: 25),
            
            titleLabel.centerYAnchor.constraint(equalTo: checkImage.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: checkImage.trailingAnchor, multiplier: 1),
            
            toggle.centerYAnchor.constraint(equalTo: checkImage.centerYAnchor),
            stackView.trailingAnchor.constraint(equalToSystemSpacingAfter: toggle.trailingAnchor, multiplier: 1)
        ])
        
        checkImage.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        titleLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        toggle.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }
}

// MARK: - Actions
extension FilterRowView {
    @objc func toggleChanged(_ sender: UISwitch) {
        if sender.isOn {
            checkImage.image = UIImage(systemName: "checkmark.circle.fill")
        } else {
            checkImage.image = UIImage(systemName: "circle")
        }
    }
}

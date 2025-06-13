//
//  FilterRow.swift
//  StudyHere
//
//  Created by Gabriel Lopes on 13/06/25.
//

import UIKit

class FilterRow: UIView {
    
    let checkImage = UIImageView(image: UIImage(systemName: "circle"))
    let titleLabel = UILabel()
    let toggle = UISwitch()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Extensions
extension FilterRow {
    func style() {
        // checkImage
        checkImage.translatesAutoresizingMaskIntoConstraints = false
        
        // titleLabel
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Estudo silencioso"
        
        // Toggle
        toggle.translatesAutoresizingMaskIntoConstraints = false
        toggle.isOn = false
        toggle.addTarget(self, action: #selector(toggleChanged(_:)), for: .valueChanged)
        
    }
    
    func layout() {
        addSubview(checkImage)
        addSubview(titleLabel)
        addSubview(toggle)
        
        // Components
        NSLayoutConstraint.activate([
            checkImage.topAnchor.constraint(equalTo: topAnchor),
            checkImage.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            
            titleLabel.topAnchor.constraint(equalTo: checkImage.topAnchor),
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: checkImage.trailingAnchor, multiplier: 1),
            
            toggle.topAnchor.constraint(equalTo: titleLabel.topAnchor),
            trailingAnchor.constraint(equalToSystemSpacingAfter: toggle.trailingAnchor, multiplier: 1)
        ])
    }
}

// MARK: - Actions
extension FilterRow {
    @objc func toggleChanged(_ sender: UISwitch) {
        if sender.isOn {
            checkImage.image = UIImage(systemName: "checkmark.circle.fill")
        } else {
            checkImage.image = UIImage(systemName: "circle")
        }
    }
}

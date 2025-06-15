//
//  ControllerPreview.swift
//  StudyHere
//
//  Created by Gabriel Lopes on 13/06/25.
//

import UIKit
import SwiftUI

struct ControllerPreview: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return PlaceDetailViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Nothing
    }
}

//struct ControllerPreview: UIViewRepresentable {
//    func makeUIView(context: Context) -> some UIView {
//        return FilterRow()
//    }
//    
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        // Nothing
//    }
//}

#Preview(body: {
    ControllerPreview()
})

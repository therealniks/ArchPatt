//
//  UIViewPreview.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 11.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation
import SwiftUI

/// Используется для отображения в превью Xcode
struct UIViewPreview<View: UIView>: UIViewRepresentable {
    
    private let view: View
    
    init(_ view: View) {
        self.view = view
    }
    
    func makeUIView(context: Context) -> View {
        return view
    }
    
    func updateUIView(_ uiView: View, context: Context) {
        
    }
}

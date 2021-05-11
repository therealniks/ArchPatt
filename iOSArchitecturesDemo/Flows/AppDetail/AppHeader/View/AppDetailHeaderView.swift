//
//  AppDetailHeaderView.swift
//  iOSArchitecturesDemo
//
//  Created by N!K on 28.04.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class AppDetailHeaderView: UIView {

    private(set) lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 30
        imageView.layer.masksToBounds = true
        return imageView
    } ()
    
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 2
        return label
    } ()
    
    private(set) lazy var detailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    } ()

    private(set) lazy var openButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.tintColor = .white
        button.setTitle("OPEN", for: .normal)
        button.backgroundColor = .systemBlue
        return button
    } ()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    
    // MARK: - UI
    
    
    private func setupLayout() {
        self.addSubview(self.imageView)
        self.addSubview(self.titleLabel)
        self.addSubview(self.detailsLabel)
        self.addSubview(self.openButton)
        
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12),
            self.imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            self.imageView.widthAnchor.constraint(equalToConstant: 120),
            self.imageView.heightAnchor.constraint(equalToConstant: 120),
            
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 12),
            self.titleLabel.leftAnchor.constraint(equalTo: self.imageView.rightAnchor, constant: 16),
            self.titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            self.detailsLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 12),
            self.detailsLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
            self.detailsLabel.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
            
            self.openButton.leftAnchor.constraint(equalTo: self.imageView.rightAnchor, constant: 16.0),
            self.openButton.bottomAnchor.constraint(equalTo: self.imageView.bottomAnchor),
            self.openButton.widthAnchor.constraint(equalToConstant: 80.0),
            self.openButton.heightAnchor.constraint(equalToConstant: 32.0)

        ])
        
    }
    
    
}

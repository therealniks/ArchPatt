//
//  AppDetailReleaseNotesView.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 11.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//


import SwiftUI

class AppDetailReleaseNotesView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .label
        label.text = "What's new"
        return label
    }()
    
    private lazy var historyButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Version History", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        button.backgroundColor = .systemBackground
        return button
    }()
    
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private(set) lazy var releaseDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private(set) lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .label
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }
    
    func setupView(){
        self.addSubview(titleLabel)
        self.addSubview(historyButton)
        self.addSubview(versionLabel)
        self.addSubview(releaseDateLabel)
        self.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            historyButton.topAnchor.constraint(equalTo: titleLabel.topAnchor),
            historyButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            versionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            versionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            
            releaseDateLabel.topAnchor.constraint(equalTo: versionLabel.topAnchor),
            releaseDateLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            descriptionLabel.topAnchor.constraint(equalTo: versionLabel.bottomAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16)
        ])
    }
}

struct AppDetailReleaseNotesView_Preview: PreviewProvider {
    static var previews: some View {
        let view = AppDetailReleaseNotesView()
        view.versionLabel.text = "Vesion 1.1.0"
        view.releaseDateLabel.text = "6y ago"
        view.descriptionLabel.text = "some text view"
        return UIViewPreview(view)
            .previewLayout(.fixed(width: 375, height: 300))
    }
}

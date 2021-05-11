//
//  AppDetailViewController.swift
//  iOSArchitecturesDemo
//
//  Created by ekireev on 20.02.2018.
//  Copyright © 2018 ekireev. All rights reserved.
//

import UIKit

final class AppDetailViewController: UIViewController {
    
    public var app: ITunesApp
    
    lazy var headerViewController = AppDetailHeaderViewController(app: app)
    lazy var releaseNoteViewController = AppDetailReleaseNotesController(app: app)
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    private func configureUI() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationItem.largeTitleDisplayMode = .never
        
        self.addHeaderViewController()
        self.addDescriptionViewController()
    }
    private func addHeaderViewController() {
        self.addChild(self.headerViewController)
        self.view.addSubview(self.headerViewController.view)
        self.headerViewController.didMove(toParent: self)
        self.headerViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
    NSLayoutConstraint.activate([
        self.headerViewController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
        self.headerViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
        self.headerViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor)
    ])
    }
    
    private func addDescriptionViewController() {
        // TODO: ДЗ, сделать другие сабмодули
        self.addChild(releaseNoteViewController)
        let releaseNoteView = releaseNoteViewController.view
        releaseNoteViewController.didMove(toParent: self)
        releaseNoteView?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            releaseNoteView!.topAnchor.constraint(equalTo: self.headerViewController.view.bottomAnchor)
        ])
        

    
    }
}

//
//  AppDetailHeaderViewController.swift
//  iOSArchitecturesDemo
//
//  Created by N!K on 28.04.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class AppDetailHeaderViewController: UIViewController {

// MARK: - Properties
    private let app: ITunesApp
    private let imageDownloader = ImageDownloader()
    
    private var appDetailHeaderView: AppDetailHeaderView {
        return self.view as! AppDetailHeaderView
    }
    
// MARK: - INIT
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

// MARK: - LifeCycle
    
    override func loadView() {
        super.loadView()
        self.view = AppDetailHeaderView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillDate()
    }
    
    private func fillDate() {
        self.downloadImage()
        self.appDetailHeaderView.titleLabel.text = app.appName
        self.appDetailHeaderView.detailsLabel.text = app.company
    }
    
    private func downloadImage() {
        guard let url = self.app.iconUrl else {
            return
        }
        self.imageDownloader.getImage(fromUrl: url) { [weak self] (image, _) in
            self?.appDetailHeaderView.imageView.image = image
        }
    }
}

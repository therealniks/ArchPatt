//
//  AppDetailReleaseNotesController.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 11.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class AppDetailReleaseNotesController: UIViewController {
    
    private var appDetailReleaseNotesView: AppDetailReleaseNotesView {
        return self.view as! AppDetailReleaseNotesView
    }
    
    let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .medium
        df.timeStyle = .none
        df.locale = Locale(identifier: "en_En")
        return df
    }()
    
    private let app: ITunesApp
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = AppDetailReleaseNotesView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    private func getData() {
        self.appDetailReleaseNotesView.versionLabel.text = "Version " + (app.version ?? "0")
        self.appDetailReleaseNotesView.releaseDateLabel.text = dateFormatter.string(from: app.releaseDate ?? Date())
        self.appDetailReleaseNotesView.descriptionLabel.text = app.releaseNotes
    }
}

//
//  SearchSongBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 12.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit
struct SearchSongBuilder {
    static func build() -> UIViewController {
        let presenter = SearchSongPresenter()
        let viewController = SearchSongViewController(output: presenter)
        presenter.view = viewController
        return viewController
    }
}

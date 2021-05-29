//
//  SearchModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by N!K on 29.04.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit
final class SearchModuleBuilder {
    static func build() -> (UIViewController & SearchViewInput) {
        let presenter = SearchPresenter()
        let viewController = SearchViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}

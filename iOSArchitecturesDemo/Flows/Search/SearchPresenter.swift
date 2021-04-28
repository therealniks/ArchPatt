//
//  SearchPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by N!K on 28.04.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation

final class SearchPresenter {
    private let searchService = ITunesSearchService()
    private func requestApps(with query: String) {
    self.searchService.getApps(forQuery: query) { [weak self] result in

        }
    }
    
    private func openAppDetails(with app: ITunesApp) {

    }
}

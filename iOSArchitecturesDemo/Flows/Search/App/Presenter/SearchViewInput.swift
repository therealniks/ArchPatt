//
//  SearchViewInput.swift
//  iOSArchitecturesDemo
//
//  Created by N!K on 28.04.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation

protocol SearchViewInput: class {
    var searchResults: [ITunesApp] { get set }
    func showError(error: Error)
    func showNoResults()
    func hideNoResults()
    func throbber(show: Bool)
}

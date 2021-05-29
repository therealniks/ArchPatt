//
//  SearchSongViewIO.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 11.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation

protocol SearchSongViewInput {
    var searchResults: [ITunesSong] { get set }
    
    func throbber(show: Bool)
    func showError(error: Error)
    func showNoResults()
    func hideNoResults()
}

protocol SearchSongViewOutput {
    func viewDidSearch(with query: String)
    func viewDidSelectSong(_ song: ITunesSong)
}

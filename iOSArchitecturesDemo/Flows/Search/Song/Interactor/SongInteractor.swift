//
//  SongInteractor.swift
//  iOSArchitecturesDemo
//
//  Created by Nikita Sergeyev on 16.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Alamofire
protocol SongInteractorInput {
    func requestSongs(with query: String, completion: @escaping (Result<[ITunesSong]>) -> Void)
}

final class SongInteractor: SongInteractorInput {
    private let searchService = ITunesSearchService()
    func requestSongs(with query: String, completion: @escaping (Result<[ITunesSong]>) -> Void) {
        self.searchService.getSongs(forQuery: query, completion: completion)
    }
}

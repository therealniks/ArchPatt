//
//  SearchInteractor.swift
//  iOSArchitecturesDemo
//
//  Created by Nikita Sergeyev on 16.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Alamofire
protocol SearchInteractorInput {
    func requestApps(with query: String, completion: @escaping (Result<[ITunesApp]>) -> Void)
}

final class SearchInteractor: SearchInteractorInput {
    private let searchService = ITunesSearchService()
    func requestApps(with query: String, completion: @escaping (Result<[ITunesApp]>) -> Void) {
        self.searchService.getApps(forQuery: query, then: completion)
    }
}

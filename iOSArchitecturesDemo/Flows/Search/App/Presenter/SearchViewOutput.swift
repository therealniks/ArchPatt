//
//  SearchViewOutput.swift
//  iOSArchitecturesDemo
//
//  Created by N!K on 28.04.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation

protocol SearchViewOutput: class {
    func viewDidSearch(with query: String)
    func viewDidSelectApp(_ app: ITunesApp)
    }

//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 11.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

struct SongCellModel {
    let artist: String
    let track: String?
    let album: String?
    let artwork: String?
}

final class SongCellModelFactory {
        
static func cellModel(from model: ITunesSong) -> SongCellModel {
    return SongCellModel(artist: model.artistName!,
                        track: model.trackName,
                        album: model.collectionName,
                        artwork: model.artwork)
    }
}

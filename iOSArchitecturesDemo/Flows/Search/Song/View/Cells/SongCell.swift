//
//  SongCell.swift
//  iOSArchitecturesDemo
//
//  Created by N!k on 11.05.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

final class SongCell: UITableViewCell {
    
    // MARK: - Subviews
    
    private(set) lazy var trackNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.font = UIFont.systemFont(ofSize: 16.0)
        return label
    }()
    
    private(set) lazy var artistNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .secondaryLabel
        label.font = UIFont.systemFont(ofSize: 12.0)
        return label
    }()
    
    private(set) lazy var collectionNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .secondaryLabel
        label.font = UIFont.systemFont(ofSize: 12.0)
        return label
    }()
    
    private(set) lazy var artworkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.secondarySystemFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureUI()
    }
    
    // MARK: - Methods
    
    func configure(with cellModel: SongCellModel) {
        let imageDownloader = ImageDownloader()
        self.artistNameLabel.text = cellModel.artist
        self.trackNameLabel.text = cellModel.track
        self.collectionNameLabel.text = cellModel.album
        guard let artWork = cellModel.artwork else {
            return
        }
        imageDownloader.getImage(fromUrl: artWork) { [weak self] (image, _) in
            self?.artworkImageView.image = image
        }
    }
    
    // MARK: - UI
    
    override func prepareForReuse() {
        [self.artistNameLabel, self.trackNameLabel, self.collectionNameLabel].forEach { $0.text = nil }
        self.artworkImageView.image = nil
    }
    
    private func configureUI() {
        self.addArtworkImageView()
        self.addTrackNameLabelLabel()
        self.addArtistNameLabel()
        self.addCollectionNameLabel()
    }
    
    private func addArtworkImageView() {
        self.contentView.addSubview(self.artworkImageView)
        NSLayoutConstraint.activate([
            self.artworkImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8.0),
            self.artworkImageView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 8.0),
            self.artworkImageView.widthAnchor.constraint(equalToConstant: 64),
            self.artworkImageView.heightAnchor.constraint(equalToConstant: 64),
            self.artworkImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8.0)
            ])
    }
    
    private func addTrackNameLabelLabel() {
        self.contentView.addSubview(self.trackNameLabel)
        NSLayoutConstraint.activate([
            self.trackNameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8.0),
            self.trackNameLabel.leftAnchor.constraint(equalTo: self.artworkImageView.rightAnchor, constant: 8),
            self.trackNameLabel.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -40.0)
            ])
    }
    
    private func addArtistNameLabel() {
        self.contentView.addSubview(self.artistNameLabel)
        NSLayoutConstraint.activate([
            self.artistNameLabel.topAnchor.constraint(equalTo: self.trackNameLabel.bottomAnchor, constant: 4.0),
            self.artistNameLabel.leftAnchor.constraint(equalTo: self.artworkImageView.rightAnchor, constant: 8),
            self.artistNameLabel.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -40.0)
            ])
    }
    
    private func addCollectionNameLabel() {
        self.contentView.addSubview(self.collectionNameLabel)
        NSLayoutConstraint.activate([
            self.collectionNameLabel.topAnchor.constraint(equalTo: self.artistNameLabel.bottomAnchor, constant: 4.0),
            self.collectionNameLabel.leftAnchor.constraint(equalTo: self.artworkImageView.rightAnchor, constant: 8),
            self.collectionNameLabel.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -40.0)
            ])
    }
}

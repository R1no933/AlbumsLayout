//
//  Model.swift
//  AlbumsLayout
//
//  Created by Dmitriy Baskakov on 13.06.2022.
//

import UIKit

struct SectionModel {
    var image: UIImage?
    var signature: String
    var count: String
}

extension SectionModel {
    static let albumsSection = [
        SectionModel(
            image: UIImage(named: "img1"),
            signature: "Recent",
            count: "1384"),
        SectionModel(
            image: UIImage(named: "img2"),
            signature: "WhatsApp",
            count: "333"),
        SectionModel(
            image: UIImage(named: "img3"),
            signature: "Telegram",
            count: "28"),
        SectionModel(
            image: UIImage(named: "img4"),
            signature: "Mem's",
            count: "666"),
        SectionModel(
            image: UIImage(named: "img3"),
            signature: "Telegram",
            count: "28"),
        SectionModel(
            image: UIImage(named: "img1"),
            signature: "Recent",
            count: "1384"),
        SectionModel(
            image: UIImage(named: "img2"),
            signature: "WhatsApp",
            count: "333"),
        SectionModel(
            image: UIImage(named: "img4"),
            signature: "Mem's",
            count: "666")
    ]
}

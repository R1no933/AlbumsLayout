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
    var rightImage: UIImage?
}

extension SectionModel {
    static let albumsSection = [
        SectionModel(
            image: UIImage(named: "img1"),
            signature: "Recent",
            count: "1384",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img2"),
            signature: "WhatsApp",
            count: "333",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img3"),
            signature: "Telegram",
            count: "28",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img4"),
            signature: "Mem's",
            count: "666",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img3"),
            signature: "Telegram",
            count: "28",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img1"),
            signature: "Recent",
            count: "1384",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img2"),
            signature: "WhatsApp",
            count: "333",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img4"),
            signature: "Mem's",
            count: "666",
            rightImage: nil)
    ]
    
    static let peopleSection = [
        SectionModel(
            image: UIImage(named: "img4"),
            signature: "Cat's",
            count: "666",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img3"),
            signature: "Mem's",
            count: "28",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img1"),
            signature: "Board's",
            count: "1384",
            rightImage: nil),
        SectionModel(
            image: UIImage(named: "img2"),
            signature: "Cat's rider",
            count: "333",
            rightImage: nil)
    ]
    
    static let typeSection = [
        SectionModel(
            image: UIImage(systemName: "video"),
            signature: "Video",
            count: "75",
            rightImage: UIImage(systemName: "chevron.right")),
        SectionModel(
            image: UIImage(systemName: "person.crop.rectangle"),
            signature: "Selfie",
            count: "15",
            rightImage: UIImage(systemName: "chevron.right")),
        SectionModel(
            image: UIImage(systemName: "livephoto"),
            signature: "Live-photo's",
            count: "22",
            rightImage: UIImage(systemName: "chevron.right")),
        SectionModel(
            image: UIImage(systemName: "cube"),
            signature: "Portrait's",
            count: "38",
            rightImage: UIImage(systemName: "chevron.right")),
        SectionModel(
            image: UIImage(systemName: "pano"),
            signature: "Panorama",
            count: "111",
            rightImage: UIImage(systemName: "chevron.right")),
        SectionModel(
            image: UIImage(systemName: "camera.viewfinder"),
            signature: "Screenshot's",
            count: "147",
            rightImage: UIImage(systemName: "chevron.right")),
        SectionModel(
            image: UIImage(systemName: "smallcircle.filled.circle"),
            signature: "Sreen recording",
            count: "1",
            rightImage: UIImage(systemName: "chevron.right"))
    ]
    
    static let 
}


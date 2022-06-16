//
//  PeopleCollectionViewCell.swift
//  AlbumsLayout
//
//  Created by Dmitriy Baskakov on 16.06.2022.
//

import Foundation
import UIKit

class PeopleCollectionViewCell: UICollectionViewCell {
    static let identifire = "PeopleCollectionViewCell"
    
    //MARK: - UI's elemet's
    var data: SectionModel? {
        didSet {
            guard let data = data else { return }
            albumImage.image = data.image
            signatureLabel.text = data.signature
            countLabel.text = data.count
        }
    }
    
    
    lazy var signatureLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = PeopleMetrics.signatureLabelFont
        label.textAlignment = .left
        label.textColor = UIColor.black
        
        return label
    }()
    
    lazy var countLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = PeopleMetrics.signatureLabelFont
        label.textAlignment = .left
        label.textColor = UIColor.systemGray3
        
        return label
    }()
    
    lazy var albumImage: UIImageView = {
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        
        return image
    }()
    
    //MARK: - Init's
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Layout Subview's
    override func layoutSubviews() {
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup Hierarchy
    func setupHierarchy() {
        contentView.addSubview(albumImage)
        contentView.addSubview(signatureLabel)
        contentView.addSubview(countLabel)
    }
    
    //MARK: - SetupLayout's
    func setupLayout() {
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: PeopleMetrics.albumsImageTop),
            albumImage.leadingAnchor.constraint(
                equalTo: self.contentView.leadingAnchor,
                constant: PeopleMetrics.albumsImageLeading),
            albumImage.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: PeopleMetrics.albumsImageTrailing),
            albumImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            
            signatureLabel.topAnchor.constraint(
                equalTo: albumImage.bottomAnchor,
                constant: PeopleMetrics.signatureLabelTop),
            signatureLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: PeopleMetrics.signatureLabelLeading),
            signatureLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            countLabel.topAnchor.constraint(
                equalTo: signatureLabel.bottomAnchor,
                constant: PeopleMetrics.countLabelTop),
            countLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: PeopleMetrics.countLabelLeading),
            countLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ])
    }
    
    
    //MARK: - Metric's constant's
    
    private struct PeopleMetrics {
        static let signatureLabelFont = UIFont(name: "system", size: 18)
        
        static let albumsImageTop: CGFloat = 5
        static let albumsImageLeading: CGFloat = 5
        static let albumsImageTrailing: CGFloat = -5
        
        static let signatureLabelTop: CGFloat = 7
        static let signatureLabelLeading: CGFloat = 5
        
        static let countLabelTop: CGFloat = 2
        static let countLabelLeading: CGFloat = 5
    }
}


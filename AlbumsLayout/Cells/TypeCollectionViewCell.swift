//
//  TypeCollectionViewCell.swift
//  AlbumsLayout
//
//  Created by Dmitriy Baskakov on 16.06.2022.
//

import UIKit

class TypeCollectionViewCell: UICollectionViewCell {
    static let identifire = "TypeCollectionViewCell"
    
    //MARK: - UI's elemet's
    var data: SectionModel? {
        didSet {
            guard let data = data else { return }
            leftImage.image = data.image
            descriptionLabel.text = data.signature
            countLabel.text = data.count
            rightImage.image = data.rightImage
        }
    }
    
    lazy var leftImage: UIImageView = {
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.systemBlue
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true

        return image
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = TypeMetrics.labelFont
        label.textAlignment = .left
        label.textColor = UIColor.systemBlue
        
        return label
    }()
    
    lazy var countLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = TypeMetrics.labelFont
        label.textAlignment = .left
        label.textColor = UIColor.systemGray
        
        return label
    }()
    
    lazy var rightImage: UIImageView = {
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.systemGray3
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        
        return image
    }()
    //MARK: - Init's
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Layout Subview's
    override func layoutSubviews() {
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup Hierarchy
    private func setupHierarchy() {
        [leftImage, descriptionLabel, countLabel, rightImage].forEach{ (contentView.addSubview($0)) }
    }
    
    //MARK: - SetupLayout's
    private func setupLayout() {
        NSLayoutConstraint.activate([
            leftImage.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: TypeMetrics.leftImageTop),
            leftImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            leftImage.widthAnchor.constraint(equalToConstant: TypeMetrics.leftImageWidth),
            leftImage.heightAnchor.constraint(equalToConstant: TypeMetrics.leftImageHeight),
            
            descriptionLabel.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: TypeMetrics.descriptionTop),
            descriptionLabel.leadingAnchor.constraint(
                equalTo: leftImage.leadingAnchor,
                constant: TypeMetrics.descriptionLeading),
            
            rightImage.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: TypeMetrics.rightImageTop),
            rightImage.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: TypeMetrics.rightImageTrailing),
            rightImage.widthAnchor.constraint(equalToConstant: TypeMetrics.rightImageWidth),
            rightImage.heightAnchor.constraint(equalToConstant: TypeMetrics.rightImageHeight),
            
            countLabel.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: TypeMetrics.countTop),
            countLabel.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            countLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: TypeMetrics.countTrailing)
        ])
    }
    
    //MARK: - Metric's constant's
    private struct TypeMetrics {
        static let labelFont = UIFont(name: "system", size: 20)
        
        static let leftImageTop: CGFloat = 0
        static let leftImageWidth: CGFloat = 28
        static let leftImageHeight: CGFloat = 28
        
        static let descriptionTop: CGFloat = 3
        static let descriptionLeading: CGFloat = 38
        
        static let countTop: CGFloat = 3
        static let countTrailing: CGFloat = -30
        
        static let rightImageTop: CGFloat = 8
        static let rightImageTrailing: CGFloat = -10
        static let rightImageWidth: CGFloat = 10
        static let rightImageHeight: CGFloat = 10
    }
}

//
//  HeaderAlbumCell.swift
//  AlbumsLayout
//
//  Created by Dmitriy Baskakov on 13.06.2022.
//

import UIKit

class HeaderAlbumCell: UICollectionReusableView {
    static let identifire = "HeaderAlbumCell"
    
    //MARK: - UI's elemet's
    private lazy var container: UIView = {
        let container = UIView()
        
        container.translatesAutoresizingMaskIntoConstraints = false
        container.clipsToBounds = true
        
        return container
    }()
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = HeaderMetrics.headerLabelFont
        label.text = "Мои альбомы"
        label.textAlignment = .left
        label.textColor = UIColor.black
        
        return label
    }()
    
    lazy var allRightLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = HeaderMetrics.headerLabelFont
        label.text = "Все"
        label.textAlignment = .left
        label.textColor = UIColor.link
        
        return label
    }()
    
    //MARK: - Init's
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Layout Subview's
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    //MARK: - Setup Hierarchy
    func setupHierarchy() {
        addSubview(container)
        container.addSubview(headerLabel)
        container.addSubview(allRightLabel)
    }
    
    //MARK: - SetupLayout's
    func setupLayout() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.trailingAnchor.constraint(equalTo: trailingAnchor),
            container.widthAnchor.constraint(equalTo: widthAnchor),
            container.heightAnchor.constraint(equalTo: heightAnchor),
            
            headerLabel.leadingAnchor.constraint(
                equalTo: container.leadingAnchor,
                constant: HeaderMetrics.headerLabelLeading),
            headerLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            
            allRightLabel.trailingAnchor.constraint(
                equalTo: container.trailingAnchor,
                constant: HeaderMetrics.allRinghtLabelTrailing),
            allRightLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor)
            
        ])
    }
    
    //MARK: - Metric's constant's
    private struct HeaderMetrics {
        static let headerLabelFont: UIFont = .boldSystemFont(ofSize: 20)
        
        static let headerLabelLeading: CGFloat = 5
        
        static let allRinghtLabelTrailing: CGFloat = -15
        
    }
}

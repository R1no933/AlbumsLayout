//
//  AlbumsViewController.swift
//  AlbumsLayout
//
//  Created by Dmitriy Baskakov on 13.06.2022.
//
import Foundation
import UIKit

class AlbumsViewController: UIViewController, UICollectionViewDataSource {
    
    //MARK: - UI's element's
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createCompositionalLayout())
        collectionView.register(
            AlbumsCollectionViewCell.self,
            forCellWithReuseIdentifier: AlbumsCollectionViewCell.identifire)
        collectionView.register(
            HeaderAlbumCell.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: HeaderAlbumCell.identifire)
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.white
        
        return collectionView
    }()
    
    
    //MARK: - Controller lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Альбомы"
        view.backgroundColor = UIColor.white
        setupLayout()
    }
    
    //MARK: - Setup Layout's
    private func setupLayout() {
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: AlbumsViewControllerMetrics.collectionViewTop),
            collectionView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: AlbumsViewControllerMetrics.collectionViewLeading),
            collectionView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: AlbumsViewControllerMetrics.collectionViewTrailing),
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
    
    
    //MARK: - DataSource numberOfSection
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //MARK: - DataSource numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        let numberOfCells = SectionModel.albumsSection.count
        
        return numberOfCells
    }
    
    //MARK: - DataSource cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let firstCell = collectionView.dequeueReusableCell(
                withReuseIdentifier: AlbumsCollectionViewCell.identifire,
                for: indexPath) as! AlbumsCollectionViewCell
        firstCell.data = SectionModel.albumsSection[indexPath.row]
        return firstCell
        
    }
    
    //MARK: - DataSource viewForSupplementaryElementOfKind
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let firstHeader = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: HeaderAlbumCell.identifire,
                for: indexPath) as! HeaderAlbumCell
        return firstHeader
        
    }
}

//MARK: - Extensions for VC
extension AlbumsViewController {
    //MARK: - Create Compositional Layout
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
            switch sectionNumber {
            case 0: return self.layoutAlbums()
            default: return self.layoutAlbums()
            }
        }
    }
    
    //MARK: - Layout Albums
    func layoutAlbums() -> NSCollectionLayoutSection {
       
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(50))
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
       
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .absolute(180),
            heightDimension: .absolute(240))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
       
        item.contentInsets = NSDirectionalEdgeInsets(
            top: 0,
            leading: 0,
            bottom: 60,
            trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(180),
            heightDimension: .absolute(240))
        
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        section.contentInsets = .init(
            top: 10,
            leading: 0,
            bottom: 5,
            trailing: 0)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    
    //MARK: - Metric's constants
    private struct AlbumsViewControllerMetrics {
        static let collectionViewTop: CGFloat = 8
        static let collectionViewLeading: CGFloat = 8
        static let collectionViewTrailing: CGFloat = -8
        
    }
}

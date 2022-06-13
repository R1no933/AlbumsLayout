//
//  TabBarController.swift
//  AlbumsLayout
//
//  Created by Dmitriy Baskakov on 13.06.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let mediatekaViewController = UINavigationController(rootViewController: MediatekaViewController())
        mediatekaViewController.tabBarItem = UITabBarItem(
            title: "Медиатека",
            image: UIImage(systemName: "photo.fill.on.rectangle.fill"),
            tag: 0)
        
        let forYouViewController = UINavigationController(rootViewController: ForYouViewController())
        forYouViewController.tabBarItem = UITabBarItem(
            title: "Для вас",
            image: UIImage(systemName: "heart.text.square.fill"),
            tag: 1)
        
        let albumsViewController = UINavigationController(rootViewController: AlbumsViewController())
        albumsViewController.tabBarItem = UITabBarItem(
            title: "Альбомы",
            image: UIImage(systemName: "square.stack.fill"),
            tag: 2)
        albumsViewController.navigationBar.prefersLargeTitles = true
        
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        searchViewController.tabBarItem = UITabBarItem(
            title: "Поиск",
            image: UIImage(systemName: "magnifyingglass"),
            tag: 3)
        
        setViewControllers([
            mediatekaViewController,
            forYouViewController,
            albumsViewController,
            searchViewController
        ], animated: true)
        
        selectedIndex = 2
    
    }
}

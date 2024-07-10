//
//  MainTabBarController.swift
//  Homework_3
//
//  Created by Айрат Фахрутдинов on 08.07.2024.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), tag: 0)
        
        let libraryVC = LibraryViewController()
        libraryVC.tabBarItem = UITabBarItem(title: "Библиотека", image: UIImage(systemName: "book"), tag: 1)
        
        let favoritesVC = FavoritesViewController()
        favoritesVC.tabBarItem = UITabBarItem(title: "Избранное", image: UIImage(systemName: "star"), tag: 2)
        
        viewControllers = [profileVC, libraryVC, UINavigationController(rootViewController: favoritesVC)]
    }
}

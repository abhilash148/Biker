//
//  SecondViewController.swift
//  Biker
//
//  Created by Sai Abhilash Gudavalli on 31/08/24.
//

import Foundation
import UIKit

class SecondViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let viewControllersList = [homeVC, profileVC]
        
        viewControllers = viewControllersList
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = .white
        
        
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    
}

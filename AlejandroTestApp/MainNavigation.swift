//
//  MainNavigation.swift
//  AlejandroTestApp
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Foundation
import SlideMenuControllerSwift

class MainNavigation {

    var rootViewController: UIViewController!
    
    lazy var mainController: UIViewController! = {
		let mainViewController = DemoListViewController()
        mainViewController.addLeftBarButtonWithImage(UIImage(named: Images.navMenu)!)
        let mainNavigationController = UINavigationController(rootViewController: mainViewController)
        
        return SlideMenuController(mainViewController: mainNavigationController, leftMenuViewController: MainMenuViewController())
    }()

	
	init() {
        
        self.rootViewController = mainController
    }
		
}


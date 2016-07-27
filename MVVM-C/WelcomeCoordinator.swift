//
//  WelcomeCoordinator.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/26.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import UIKit


protocol WelcomeCoordinatorDeletgate {
    func skipWelcome()
}

class WelcomeCoordinator:Coordinator
{
    var window:UIWindow
    
    var delegate:WelcomeViewModelCoordinatorDelegate?
    
    var viewController:WelcomeViewController?
    
    init(window:UIWindow)
    {
        self.window = window
    }
    
    /**
     跳转到欢迎画面
     
     - author: 王雁
     - date: 16-07-27 12:07:04
     */
    func start() {
        let viewModel=WelcomeViewModel()
        viewModel.coordinateDelegate=self
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewControllerWithIdentifier("welcome") as? WelcomeViewController
        viewController?.viewModel=viewModel
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}


// MARK: - WelcomeViewModelCoordinatorDelegate
extension WelcomeCoordinator:WelcomeViewModelCoordinatorDelegate
{
    func skipWelcome() {
        delegate?.skipWelcome()
    }
}

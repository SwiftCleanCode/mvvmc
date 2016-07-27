//
//  PhotoListCoordinator.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/27.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import UIKit

class ChoiceBellePhotoListCoordinator:Coordinator
{
    
    var window:UIWindow
    
    init(window:UIWindow)
    {
        self.window = window
    }
    
    
    /**
     跳转到精选美女列表
     
     - author: 王雁
     - date: 16-07-27 12:07:51
     */
    func start() {
        
        let targetM=PhotoList()
        let targetVM = ChoiceBellePhotoListViewModel()
        targetVM.model = targetM
        targetVM.coordinatorDelegate=self
        let targetVC = ChoiceBellePhotoListViewController(style: UITableViewStyle.Plain)
        targetVC.viewModel = targetVM
        
        let targetNC = UINavigationController(rootViewController: targetVC)
        window.rootViewController = targetNC
        window.makeKeyAndVisible()
        
    }
}


// MARK: - PhotoListViewModelCoordinatorDelegate
extension ChoiceBellePhotoListCoordinator:PhotoListViewModelCoordinatorDelegate
{
    func listViewModelDidSelectedData() {
        
    }
}

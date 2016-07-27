//
//  AppCoordinator.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/26.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    
    let window:UIWindow
    
    init(window:UIWindow)
    {
        self.window = window
    }
    
    
    func start() {
        
        /**
         默认显示欢迎画面,这里当然可以添加更多复杂的逻辑,
         比如只有第一次打开才显示欢迎画面,否则直接进入美女列表,
         或者跳出一个自己的广告页面等等
         - author: 王雁
         - date: 16-07-27 12:07:58
         */
        coordinateToWelcome()
    }
    
    
    /**
     指定window的rootViewController为欢迎画面
     
     - author: 王雁
     - date: 16-07-27 12:07:58
     */
    func coordinateToWelcome(){
        let coordinator = WelcomeCoordinator(window: window)
        coordinator.delegate=self
        coordinator.start()
    }
    
    
    /**
     指定window的rootViewController为精选美女列表
     
     - author: 王雁
     - date: 16-07-27 12:07:25
     */
    func coordinateToChoiceBellePhotoList(){
       let coordinator = ChoiceBellePhotoListCoordinator(window: window)
        coordinator.start()
    }
}


// MARK: - WelcomeViewModelCoordinatorDelegate
extension AppCoordinator:WelcomeViewModelCoordinatorDelegate
{
    func skipWelcome() {
        coordinateToChoiceBellePhotoList()
    }
}

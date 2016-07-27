//
//  ChoiceBellePhotoListViewModel.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/27.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import Foundation

class ChoiceBellePhotoListViewModel: PhotoListViewModel {
    /// model
    var model: PhotoList?
    
    /// deleagtes
    /// 处理页面刷新的delegate,赋值viewController,由viewController实现具体逻辑
    var viewDelegate:PhotoListViewModelViewDelegate?
    /// 处理页面跳转的delegate,赋值coordinatoer,由coordinatoer实现具体逻辑
    var coordinatorDelegate:PhotoListViewModelCoordinatorDelegate?
    
    
    /// 导航栏上的标题
    var title = "精选美女"
    
    
    
}

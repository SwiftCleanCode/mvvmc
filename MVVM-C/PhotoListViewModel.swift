//
//  PhotoListViewModelProtocol.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/27.
//  Copyright © 2016年 michael wang. All rights reserved.

//  !!!注意这两类接口:   ****ViewModelViewDelegate接口  和   ****ViewModelCoortinatorDelegate

//  !!!某些viewModel的逻辑并不刷新页面,那么不需要设计****ViewModelViewDelegate接口.比如WelcomeViewModel的逻辑并不会更新WelcomeView,所以我没有设计WelcomeViewModelViewDelegate.

//  同理,如果某些viewModel的逻辑并不引起页面(app模块)跳转,那么没必要设计****ViewModelCoortinatorDelegate接口.

//  WelcomeViewModel的逻辑引发了模块跳转(window的rootViewController发生了改变),所以我设计了WelcomeViewCoordinatorDelegate接口

//  ListViewModel的逻辑不进会刷新listView,而且会引发页面跳转(进入图片详情页)所以,两个接口我都设计了PhotoListViewModelViewDelegate,PhotoListViewModelCoordinatorDelegate

import Foundation

/**
 *  @author 王雁, 16-07-27 12:07:07
 *
 *  viewModel与view相关的delegate,主要处理view的刷新,由viewController实现具体逻辑
 */
protocol PhotoListViewModelViewDelegate {
    
    /**
     列表数据更新,可能需要刷新整个页面
     
     - author: 王雁
     - date: 16-07-27 12:07:24
     */
    func refreshDataComplete()
}


/**
 *  @author 王雁, 16-07-27 12:07:53
 *
 *  viewModel与模块跳转相关的delegate,主要处理模块跳转,由coordinator实现具体的逻辑
 */
protocol PhotoListViewModelCoordinatorDelegate {
    /**
     列表中的某一个item被选中,可能需要跳到这个item相关的详情页
     
     - author: 王雁
     - date: 16-07-27 12:07:59
     */
    func listViewModelDidSelectedData()
}




/**
 *  @author 王雁, 16-07-27 12:07:01
 *
 *  照片列表的ViewModel接口
 */
protocol PhotoListViewModel {
    /// 图片列表
    var model:PhotoList?{get set}
}
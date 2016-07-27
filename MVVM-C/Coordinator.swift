//
//  Coordinator.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/26.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import Foundation

/**
 *  @author 王雁, 16-07-27 12:07:23
 *
 *  Coordinator接口.此接口负责app功能模块之间的跳转
 */
protocol Coordinator {
    
    /**
     执行模块跳转任务
     
     - author: 王雁
     - date: 16-07-27 12:07:51
     */
    func start()
}

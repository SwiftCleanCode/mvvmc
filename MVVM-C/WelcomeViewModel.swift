//
//  WelcomeViewModle.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/26.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import Foundation

protocol WelcomeViewModelCoordinatorDelegate {
    func skipWelcome()
}


class WelcomeViewModel {
    
    /// 不需要model.因为没有要显示什么数据,也许可以把下面的nowTime放进去?有必要么?
    
    /// delegate
    /// 处理页面跳转的delegate,赋值coordinatoer,由coordinatoer实现具体逻辑
    var coordinateDelegate:WelcomeViewModelCoordinatorDelegate?
    
    /// 当前系统时间
    var nowTime:String{
        
        let date = NSDate(timeIntervalSinceNow: 0)
        
        let dateFormater=NSDateFormatter()
        dateFormater.dateFromString("yyyy-MM-dd HH:mm:ss")
        
        let dateStr = dateFormater.stringFromDate(date)
        
        return dateStr
    }
    
    /**
     跳过Welcome的显示
     
     - author: 王雁
     - date: 16-07-27 12:07:29
     */
    func skipMe(){
        coordinateDelegate?.skipWelcome()
    }

}

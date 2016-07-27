//
//  ViewController.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/26.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    /// viewModel
    var viewModel:WelcomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     storyboard上的按钮点击事件的处理函数
     
     - author: 王雁
     - date: 16-07-27 12:07:57
     
     - parameter sender: 被点击的按钮
     */
    @IBAction func skipButtonClickHandler(sender: UIButton) {
        
        viewModel?.skipMe()
    }

}


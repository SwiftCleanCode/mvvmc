//
//  ChoiceBellePhotoListViewController.swift
//  MVVM-C
//
//  Created by 王雁 on 16/7/27.
//  Copyright © 2016年 michael wang. All rights reserved.
//

import UIKit

class ChoiceBellePhotoListViewController: UITableViewController {
    
    /// viewModel
    var viewModel:ChoiceBellePhotoListViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = viewModel?.title
    }
    
}
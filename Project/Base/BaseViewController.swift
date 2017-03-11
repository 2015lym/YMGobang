//
//  BaseViewController.swift
//  YMGobang
//
//  Created by Lym on 2017/3/10.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white;
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"返回键"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(toLastViewController))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func toLastViewController() {
        _ = navigationController?.popViewController(animated: true)
    }

}

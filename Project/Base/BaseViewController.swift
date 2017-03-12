//
//  BaseViewController.swift
//  YMGobang
//
//  Created by Lym on 2017/3/10.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

let BACKGROUND_GRAY = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.2)


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

    func YMShowSign(titleStr : String, signStr : String) {
        let alertController = UIAlertController(title:titleStr, message:signStr, preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion:nil)
    }
}

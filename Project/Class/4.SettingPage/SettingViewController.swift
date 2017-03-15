//
//  SettingViewController.swift
//  YMGobang
//
//  Created by Lym on 2017/3/11.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class SettingViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "设置"
        
        let openRegretButton = YMButton()
        openRegretButton.setTitle("开启悔棋：开", for: UIControlState.normal)
        openRegretButton.tag = 100001
        openRegretButton.frame = CGRect(origin: CGPoint(x: SCREEN_WIDTH/2 - 100, y: 150) , size: CGSize(width: 200, height: 45))
        openRegretButton.addTarget(self, action:#selector(settingEnvironment), for: UIControlEvents.touchUpInside)
        view.addSubview(openRegretButton)
        
        let computerLevelButton = YMButton()
        computerLevelButton.setTitle("人机难度：低", for: UIControlState.normal)
        computerLevelButton.tag = 100002
        computerLevelButton.frame = CGRect(origin: CGPoint(x: SCREEN_WIDTH/2 - 100, y: 240) , size: CGSize(width: 200, height: 45))
        computerLevelButton.addTarget(self, action: #selector(settingEnvironment), for: UIControlEvents.touchUpInside)
        view.addSubview(computerLevelButton)
        
        let toMainPageButton = YMButton()
        toMainPageButton.setTitle("返回", for: UIControlState.normal)
        toMainPageButton.frame = CGRect(origin: CGPoint(x:SCREEN_WIDTH/2 - 100, y: 330) , size: CGSize(width: 200, height: 45))
        toMainPageButton.addTarget(self, action: #selector(returnToMainPage), for: UIControlEvents.touchUpInside)
        view.addSubview(toMainPageButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func openRetract() {
        
    }
    
    func settingEnvironment(btn: UIButton) {
        
        if btn.tag == 100001 {
            setChooseButton(titleArr: ["开", "关"], buttonTag: 100001)
        } else {
            setChooseButton(titleArr: ["高", "中", "低"], buttonTag: 100002)
        }

    }
    
    func returnToMainPage() {
        _ = navigationController?.popViewController(animated: true)
    }
    
    func setChooseButton(titleArr: NSArray, buttonTag: Int) {

        let alertController = UIAlertController(title:"请选择", message:nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        for buttonTitle in titleArr {
            let tempTitle = String(stringInterpolationSegment: buttonTitle)
            let action = UIAlertAction(title: tempTitle, style: UIAlertActionStyle.default,  handler: { (UIAlertAction) -> Void in
                let btn = self.view.viewWithTag(buttonTag) as! YMButton
                if buttonTag == 100001 {
                    btn.setTitle("开启悔棋："+tempTitle, for: UIControlState.normal)
                } else {
                    btn.setTitle("人机难度："+tempTitle, for: UIControlState.normal)
                }
            })
            alertController.addAction(action)
        }
        
        present(alertController, animated: true, completion:nil)
        
    }
}




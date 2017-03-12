//
//  SettingViewController.swift
//  YMGobang
//
//  Created by Lym on 2017/3/11.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class SettingViewController: BaseViewController {

    let grayView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "设置"
        
        let startPVPGameButton = YMButton()
        startPVPGameButton.setTitle("开启悔棋：开", for: UIControlState.normal)
        startPVPGameButton.frame = CGRect(origin: CGPoint(x: SCREEN_WIDTH/2 - 100, y: 150) , size: CGSize(width: 200, height: 45))
        startPVPGameButton.addTarget(self, action:#selector(openRetract), for: UIControlEvents.touchUpInside)
        view.addSubview(startPVPGameButton)
        
        let startPVCGameButton = YMButton()
        startPVCGameButton.setTitle("AI难度：低", for: UIControlState.normal)
        startPVCGameButton.frame = CGRect(origin: CGPoint(x: SCREEN_WIDTH/2 - 100, y: 240) , size: CGSize(width: 200, height: 45))
        startPVCGameButton.addTarget(self, action: #selector(computerLevel), for: UIControlEvents.touchUpInside)
        view.addSubview(startPVCGameButton)
        
        let setGameEnvironmentButton = YMButton()
        setGameEnvironmentButton.setTitle("返回", for: UIControlState.normal)
        setGameEnvironmentButton.frame = CGRect(origin: CGPoint(x:SCREEN_WIDTH/2 - 100, y: 330) , size: CGSize(width: 200, height: 45))
        setGameEnvironmentButton.addTarget(self, action: #selector(returnToMainPage), for: UIControlEvents.touchUpInside)
        view.addSubview(setGameEnvironmentButton)
        
        grayView.frame = CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        grayView.backgroundColor = BACKGROUND_GRAY
        view.window?.addSubview(grayView)
        UIApplication.shared.keyWindow?.addSubview(grayView)
        grayView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func openRetract() {
        setChooseButton(titleArr: ["开", "关"])
    }
    
    func computerLevel() {
        setChooseButton(titleArr: ["高", "中", "低"])
    }
    
    func returnToMainPage() {
        _ = navigationController?.popViewController(animated: true)
    }
    
    func setChooseButton(titleArr: NSArray) {
        grayView.isHidden = false
        
        for buttonTitle in titleArr {
            print(buttonTitle)
            

            
        }
        
    }
}

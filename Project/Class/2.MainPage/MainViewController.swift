//
//  MainViewController.swift
//  YMGobang
//
//  Created by Lym on 2017/3/10.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

class MainViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "首页"
        navigationItem.leftBarButtonItem = nil
        
        let startPVPGameButton = YMButton()
        startPVPGameButton.setTitle("双人游戏", for: UIControlState.normal)
        startPVPGameButton.frame = CGRect(origin: CGPoint(x:SCREEN_WIDTH/2 - 100, y:150) , size: CGSize(width:200, height:45))
        startPVPGameButton.addTarget(self, action:#selector(startPVPGame), for: UIControlEvents.touchUpInside)
        view.addSubview(startPVPGameButton)
        
        let startPVCGameButton = YMButton()
        startPVCGameButton.setTitle("人机对战", for: UIControlState.normal)
        startPVCGameButton.frame = CGRect(origin: CGPoint(x:SCREEN_WIDTH/2 - 100, y:240) , size: CGSize(width:200, height:45))
        startPVCGameButton.addTarget(self, action:#selector(startPVCGame), for: UIControlEvents.touchUpInside)
        view.addSubview(startPVCGameButton)
        
        let setGameEnvironmentButton = YMButton()
        setGameEnvironmentButton.setTitle("设置", for: UIControlState.normal)
        setGameEnvironmentButton.frame = CGRect(origin: CGPoint(x:SCREEN_WIDTH/2 - 100, y:330) , size: CGSize(width:200, height:45))
        setGameEnvironmentButton.addTarget(self, action:#selector(setGameEnvironment), for: UIControlEvents.touchUpInside)
        view.addSubview(setGameEnvironmentButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func startPVPGame() {
        toGameViewController(titleStr: "双人游戏")
    }
    
    func startPVCGame() {
        toGameViewController(titleStr: "人机对战")
    }
    
    func setGameEnvironment() {
        YMShowSign(titleStr: "设置", signStr: "尚未开通该功能")
    }
    
    
    func toGameViewController(titleStr : String) {
        let vc = GameViewController()
        vc.title = titleStr
        navigationController?.pushViewController(vc, animated: true)
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

//
//  GameViewController.swift
//  YMGobang
//
//  Created by Lym on 2017/3/11.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class GameViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //游戏界面
        let gameView = GameView()
        gameView.frame = CGRect(origin: CGPoint(x: 15, y: 100), size: CGSize(width: SCREEN_WIDTH - 30, height: SCREEN_WIDTH - 30))
        view.addSubview(gameView)
     
        //返回按钮
        let toMainPageButton = YMButton()
        toMainPageButton.setTitle("返回", for: UIControlState.normal)
        toMainPageButton.frame = CGRect(origin: CGPoint(x:SCREEN_WIDTH/2 - 100, y: 100 + SCREEN_WIDTH) , size: CGSize(width: 200, height: 45))
        toMainPageButton.addTarget(self, action: #selector(returnToMainPage), for: UIControlEvents.touchUpInside)
        view.addSubview(toMainPageButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func returnToMainPage() {
        _ = navigationController?.popViewController(animated: true)
    }
}

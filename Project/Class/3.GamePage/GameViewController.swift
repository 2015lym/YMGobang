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
        
        let gameView = GameView()
        gameView.frame = CGRect(origin: CGPoint(x: 15, y: 100), size: CGSize(width: SCREEN_WIDTH - 30, height: SCREEN_WIDTH - 30))
        view.addSubview(gameView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

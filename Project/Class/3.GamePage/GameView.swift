//
//  GameView.swift
//  YMGobang
//
//  Created by Lym on 2017/3/13.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class GameView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.green
    }
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let gameSize = Double(frame.size.width - 20)
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.setLineWidth(1.0)
        
        
        for i in 0..<11 {
            
            context?.move(to: CGPoint(x: 10, y: 10 + gameSize / 10 * Double(i)))
            context?.addLine(to: CGPoint(x: gameSize + 10, y: 10 + gameSize / 10 * Double(i)))
            
            context?.strokePath()
        }

        for i in 0..<11 {
            
            context?.move(to: CGPoint(x: 10 + gameSize / 10 * Double(i), y: 10))
            context?.addLine(to: CGPoint(x: 10 + gameSize / 10 * Double(i), y: gameSize + 10))
            
            context?.strokePath()
        }
        
    }
    
}

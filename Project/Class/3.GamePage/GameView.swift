//
//  GameView.swift
//  YMGobang
//
//  Created by Lym on 2017/3/13.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class GameView: UIView {

    //棋盘格数，可修改此参数定制棋盘大小
    let chessPiecesNumber = 10
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.green
    }
    
    //绘制棋盘
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let gameViewSize = Double(frame.size.width - 20)
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.setLineWidth(1.0)
        
        //绘制10条横线
        for i in 0..<chessPiecesNumber {
            
            context?.move(to: CGPoint(x: 10, y: 10 + gameViewSize / Double(chessPiecesNumber - 1) * Double(i)))
            context?.addLine(to: CGPoint(x: gameViewSize + 10, y: 10 + gameViewSize / Double(chessPiecesNumber - 1) * Double(i)))
            
            context?.strokePath()
        }

        //绘制10条竖线
        for i in 0..<chessPiecesNumber {
            
            context?.move(to: CGPoint(x: 10 + gameViewSize / Double(chessPiecesNumber - 1) * Double(i), y: 10))
            context?.addLine(to: CGPoint(x: 10 + gameViewSize / Double(chessPiecesNumber - 1) * Double(i), y: gameViewSize + 10))
            
            context?.strokePath()
        }
        
        //增加点击手势
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapBoard)))
    }
    
    func tapBoard(tap: UITapGestureRecognizer) {
        
        let point = tap .location(in: tap.view)
        
        addSubview(createChess(point: point))
        
        print(point)
        
    }
    
    func createChess(point: CGPoint) -> UIView {
        let chessView = UIView()
        
        let chessSize = Double(frame.size.width - 20) / Double(chessPiecesNumber)
        
        chessView.frame = CGRect(origin: CGPoint(x:point.x, y: point.y) , size: CGSize(width: chessSize, height: chessSize))
        chessView.backgroundColor = UIColor.black
        chessView.layer.cornerRadius = chessView.frame.size.width / 2

        return chessView
    }
    
}

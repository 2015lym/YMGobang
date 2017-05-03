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
    var chessColorNumber = 1
    
    //二维数组初始化的两种方式
    var chessArray = Array<Array<Int>>()
    var blackChessArray = Array<Array<Int>>()
    var whiteChessArray = [[Int]]()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.green
    }
    
    //绘制棋盘
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let gameViewSize = Double(frame.size.width - 40)
        let intervalSize = gameViewSize / Double(chessPiecesNumber - 1)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setLineWidth(1.0)
        
        //绘制10条横线
        for i in 0..<chessPiecesNumber {
            
            context?.move(to: CGPoint(x: 20,
                                      y: 20 + intervalSize * Double(i)))
            
            context?.addLine(to: CGPoint(x: gameViewSize + 20,
                                         y: 20 + intervalSize * Double(i)))
            
            context?.strokePath()
        }

        //绘制10条竖线
        for i in 0..<chessPiecesNumber {
            
            context?.move(to: CGPoint(x: 20 + intervalSize * Double(i), y: 20))
            context?.addLine(to: CGPoint(x: 20 + intervalSize * Double(i), y: gameViewSize + 20))
            
            context?.strokePath()
        }
        
        //增加点击手势
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapBoard)))
    }
    
    //点击手势
    func tapBoard(tap: UITapGestureRecognizer) {
        
        let point = tap .location(in: tap.view)
        let gameViewSize = Double(frame.size.width - 40)
        if point.x < 20 ||
            point.y < 20 ||
            point.x > CGFloat(gameViewSize + 20) ||
            point.y > CGFloat(gameViewSize + 20) {
            return
        }
        
        createChess(point: point)
        
    }
    
    //根据手指落点，生成棋子
    func createChess(point: CGPoint) {
        let chessView = UIView()
        
        let chessSize = Double(frame.size.width - 60) / Double(chessPiecesNumber)
        let intervalSize = Double(frame.size.width - 40) / Double(chessPiecesNumber - 1)
//        print(Double(point.x)/intervalSize)
//        print(lroundf(Float(Double(point.x)/intervalSize)))
        
        let chessX = Double(lroundf(Float(Double(point.x - 20)/intervalSize))) * intervalSize
        let chessY = Double(lroundf(Float(Double(point.y - 20)/intervalSize))) * intervalSize
        
        chessView.frame = CGRect(origin: CGPoint(x: CGFloat(chessX) - CGFloat(chessSize/2) + 20,
                                                 y: CGFloat(chessY) - CGFloat(chessSize/2) + 20),
                                   size: CGSize(width: chessSize,
                                                height: chessSize))
        
        chessView.layer.cornerRadius = chessView.frame.size.width / 2
        
        let locationX = Int(chessX / intervalSize)
        let locationY = Int(chessY / intervalSize)
        
//        if chessArray[locationX][locationY] != 0 {
//            print("有棋子了")
//            return
//        } else {
        
//            chessArray[locationX][locationY] = chessColorNumber
        
            if chessColorNumber == 1 {
                chessView.backgroundColor = UIColor.black
                chessColorNumber = 2
            } else {
                chessView.backgroundColor = UIColor.white
                chessColorNumber = 1
            }
//        }
        addSubview(chessView)
    }

}

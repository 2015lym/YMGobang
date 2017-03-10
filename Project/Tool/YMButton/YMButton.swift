//
//  YMButton.swift
//  YMGobang
//
//  Created by Lym on 2017/3/10.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class YMButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        layer.cornerRadius = 5
        layer.borderWidth = 1
        setTitleColor(UIColor.black, for: UIControlState.normal)
        
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

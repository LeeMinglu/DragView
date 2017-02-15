//
//  RedView.swift
//  DragView
//
//  Created by 李明禄 on 2017/2/15.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class RedView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //获取手指
        let touch = (touches as NSSet).anyObject() as! UITouch
        let nowLocation = touch.location(in: self)
        let preLocation = touch.previousLocation(in: self)
        
        //获取两个手指的偏移量
        let offsetX = nowLocation.x - preLocation.x
        let offsetY = nowLocation.y - preLocation.y
        
        var center = self.center
        center.x += offsetX
        center.y += offsetY
        
        self.center = center
    }

}

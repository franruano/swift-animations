//
//  HolderView.swift
//  poc_animation
//
//  Created by Suarez, Francisco (iOS Developer) on 26/08/2015.
//  Copyright (c) 2015 Francisco Ruano. All rights reserved.
//

import UIKit

class HolderView: UIView {

    struct ovalCoordenates {
        var initialRect = CGRect()
        var finalRect = CGRect()
        var delay = 0.0
    }
    
    var redRectangleLayer: RectangleNewLayer?
    var circleOneLayer: OvalLayer?
    let arrOvalCoordenates:[ovalCoordenates] = {
        var _arrOvalCoordenates = [ovalCoordenates]()
        let oval0 = ovalCoordenates(initialRect: CGRect(x: 4.5, y: 295.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 4.5, y: 295.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval1 = ovalCoordenates(initialRect: CGRect(x: 32.5, y: 260.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 30.5, y: 260.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval2 = ovalCoordenates(initialRect: CGRect(x: 55.5, y: 290.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 55.5, y: 290.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval3 = ovalCoordenates(initialRect: CGRect(x: 50.5, y: 210.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 50.5, y: 210.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval4 = ovalCoordenates(initialRect: CGRect(x: 70.5, y: 250.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 70.5, y: 250.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval5 = ovalCoordenates(initialRect: CGRect(x: 85.5, y: 210.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 85.5, y: 210.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval6 = ovalCoordenates(initialRect: CGRect(x: 105.5, y: 270.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 105.5, y: 270.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval7 = ovalCoordenates(initialRect: CGRect(x: 110.5, y: 190.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 110.5, y: 190.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval8 = ovalCoordenates(initialRect: CGRect(x: 105.5, y: 150.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 105.5, y: 150.0, width: 25.0, height: 25.0), delay: 1.45)
        
        _arrOvalCoordenates.append(oval0)
        _arrOvalCoordenates.append(oval1)
        _arrOvalCoordenates.append(oval2)
        _arrOvalCoordenates.append(oval3)
        _arrOvalCoordenates.append(oval4)
        _arrOvalCoordenates.append(oval5)
        _arrOvalCoordenates.append(oval6)
        _arrOvalCoordenates.append(oval7)
        _arrOvalCoordenates.append(oval8)
        
        return _arrOvalCoordenates
        }()

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.orangeColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func drawSquareWithAnimation() {
        redRectangleLayer = RectangleNewLayer(size:CGFloat(self.frame.width))
        if let redRectangleLayer = redRectangleLayer {
            layer.addSublayer(redRectangleLayer)
            redRectangleLayer.animateStrokeWithColor(UIColor.blackColor())
        }
    }
    
    func drawCircleAnimation(timer: NSTimer) {
        circleOneLayer = OvalLayer()
        if let circleOneLayer = circleOneLayer {
            layer.addSublayer(circleOneLayer)
            if let index = timer.userInfo as? NSInteger {
                circleOneLayer.expand(UIBezierPath(ovalInRect:arrOvalCoordenates[index].initialRect), finalOval:UIBezierPath(ovalInRect:arrOvalCoordenates[index].finalRect))
            }
        }
    }
    
    
    func addSquareBorder() {
        if self.respondsToSelector("drawSquareWithAnimation") {
            NSTimer.scheduledTimerWithTimeInterval(0.45, target: self, selector: "drawSquareWithAnimation", userInfo: nil, repeats: false)
        }
    }

    func addCircle()
    {
        if self.respondsToSelector("drawCircleAnimation:") {
            NSTimer.scheduledTimerWithTimeInterval(1.45, target: self, selector: "drawCircleAnimation:", userInfo: 0, repeats: false)
            
             NSTimer.scheduledTimerWithTimeInterval(1.90, target: self, selector: "drawCircleAnimation:", userInfo: 1, repeats: false)
             NSTimer.scheduledTimerWithTimeInterval(1.95, target: self, selector: "drawCircleAnimation:", userInfo: 2, repeats: false)
            
            NSTimer.scheduledTimerWithTimeInterval(2.25, target: self, selector: "drawCircleAnimation:", userInfo: 3, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(2.30, target: self, selector: "drawCircleAnimation:", userInfo: 4, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(2.40, target: self, selector: "drawCircleAnimation:", userInfo: 5, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(2.45, target: self, selector: "drawCircleAnimation:", userInfo: 6, repeats: false)
             NSTimer.scheduledTimerWithTimeInterval(2.55, target: self, selector: "drawCircleAnimation:", userInfo: 7, repeats: false)
            
            NSTimer.scheduledTimerWithTimeInterval(2.75, target: self, selector: "drawCircleAnimation:", userInfo: 8, repeats: false)
            
        }
    }
    
//    func addCircle(position:NSInteger){
//        if self.respondsToSelector("drawCircleAnimation:") {
//            NSTimer.scheduledTimerWithTimeInterval(1.45, target: self, selector: "drawCircleAnimation:", userInfo: position, repeats: false)
//        }
//    }
}

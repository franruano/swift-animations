//
//  HolderView.swift
//  poc_animation
//
//  Created by Suarez, Francisco (iOS Developer) on 26/08/2015.
//  Copyright (c) 2015 Francisco Ruano. All rights reserved.
//

import UIKit

class HolderView: UIView {

    var redRectangleLayer: RectangleNewLayer?
    var circleOneLayer: OvalLayer?
    let arcLayer = ArcLayer()
    var arrOvalLayers = [OvalLayer]()
    
    
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
                arrOvalLayers.append(circleOneLayer)
            }
        }
    }
    
    func dropCircleAnimation(timer: NSTimer) {
        if let index = timer.userInfo as? NSInteger {
            circleOneLayer = arrOvalLayers[index]
            if let circleOneLayer = circleOneLayer {
                //layer.addSublayer(circleOneLayer)
                circleOneLayer.move(UIBezierPath(ovalInRect:arrOvalCoordenates[index].finalRect), finalOval:UIBezierPath(ovalInRect:arrOvalCoordenates[index].finalBottom))
                
            }
        }
    }
    
    func hideCircleAnimation(timer: NSTimer) {
        if let index = timer.userInfo as? NSInteger {
            circleOneLayer = arrOvalLayers[index]
            if let circleOneLayer = circleOneLayer {
                //layer.addSublayer(circleOneLayer)
                circleOneLayer.hide(UIBezierPath(ovalInRect:arrOvalCoordenates[index].finalBottom), finalOval:UIBezierPath(ovalInRect:arrOvalCoordenates[index].finalHidden))
                
            }
        }
    }
    
    
    func addSquareBorder() {
        if self.respondsToSelector("drawSquareWithAnimation") {
            NSTimer.scheduledTimerWithTimeInterval(0.45, target: self, selector: "drawSquareWithAnimation", userInfo: nil, repeats: false)
        }
    }
    
    func drawArc() {
        layer.addSublayer(arcLayer)
        arcLayer.animate()
    }

    func addCircle()
    {
        if self.respondsToSelector("drawCircleAnimation:") {
            //First round
            NSTimer.scheduledTimerWithTimeInterval(1.45, target: self, selector: "drawCircleAnimation:", userInfo: 0, repeats: false)
            //Second round
             NSTimer.scheduledTimerWithTimeInterval(1.90, target: self, selector: "drawCircleAnimation:", userInfo: 1, repeats: false)
             NSTimer.scheduledTimerWithTimeInterval(1.95, target: self, selector: "drawCircleAnimation:", userInfo: 2, repeats: false)
            //Round 3
            var time:Double = 2.10
            for i in 3...7 {
                let initialTime = time + 0.05 * Double(i)
                 NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "drawCircleAnimation:", userInfo: i, repeats: false)
            }
//            NSTimer.scheduledTimerWithTimeInterval(2.25, target: self, selector: "drawCircleAnimation:", userInfo: 3, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(2.30, target: self, selector: "drawCircleAnimation:", userInfo: 4, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(2.40, target: self, selector: "drawCircleAnimation:", userInfo: 5, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(2.45, target: self, selector: "drawCircleAnimation:", userInfo: 6, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(2.55, target: self, selector: "drawCircleAnimation:", userInfo: 7, repeats: false)
            
            //Round 4
            time += 0.25
            for i in 8...11 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "drawCircleAnimation:", userInfo: i, repeats: false)
            }
//            NSTimer.scheduledTimerWithTimeInterval(2.75, target: self, selector: "drawCircleAnimation:", userInfo: 8, repeats: false)
//             NSTimer.scheduledTimerWithTimeInterval(2.80, target: self, selector: "drawCircleAnimation:", userInfo: 9, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(2.85, target: self, selector: "drawCircleAnimation:", userInfo: 10, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(2.90, target: self, selector: "drawCircleAnimation:", userInfo: 11, repeats: false)
            
            //Round 4
            time += 0.55
            for i in 12...32 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "drawCircleAnimation:", userInfo: i, repeats: false)
            }
            
//            NSTimer.scheduledTimerWithTimeInterval(3.5, target: self, selector: "drawCircleAnimation:", userInfo: 12, repeats: false)
//             NSTimer.scheduledTimerWithTimeInterval(3.55, target: self, selector: "drawCircleAnimation:", userInfo: 13, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(3.6, target: self, selector: "drawCircleAnimation:", userInfo: 14, repeats: false)
//             NSTimer.scheduledTimerWithTimeInterval(3.65, target: self, selector: "drawCircleAnimation:", userInfo: 15, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(3.7, target: self, selector: "drawCircleAnimation:", userInfo: 16, repeats: false)
//
//            NSTimer.scheduledTimerWithTimeInterval(3.75, target: self, selector: "drawCircleAnimation:", userInfo: 17, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(3.80, target: self, selector: "drawCircleAnimation:", userInfo: 18, repeats: false)
//             NSTimer.scheduledTimerWithTimeInterval(3.85, target: self, selector: "drawCircleAnimation:", userInfo: 19, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(3.9, target: self, selector: "drawCircleAnimation:", userInfo: 20, repeats: false)
//
//            NSTimer.scheduledTimerWithTimeInterval(3.95, target: self, selector: "drawCircleAnimation:", userInfo: 21, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: "drawCircleAnimation:", userInfo: 22, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.05, target: self, selector: "drawCircleAnimation:", userInfo: 23, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.1, target: self, selector: "drawCircleAnimation:", userInfo: 24, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.15, target: self, selector: "drawCircleAnimation:", userInfo: 25, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.2, target: self, selector: "drawCircleAnimation:", userInfo: 26, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.25, target: self, selector: "drawCircleAnimation:", userInfo: 27, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.4, target: self, selector: "drawCircleAnimation:", userInfo: 28, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.45, target: self, selector: "drawCircleAnimation:", userInfo: 29, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.5, target: self, selector: "drawCircleAnimation:", userInfo: 30, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.55, target: self, selector: "drawCircleAnimation:", userInfo: 31, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(4.6, target: self, selector: "drawCircleAnimation:", userInfo: 32, repeats: false)
        }
        if self.respondsToSelector("dropCircleAnimation:") && self.respondsToSelector("hideCircleAnimation:") {
            
            let offset: Double = 0.5
            //Round 1
            var time: Double = 5.0
            for i in 0...6 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
                NSTimer.scheduledTimerWithTimeInterval(initialTime + offset, target: self, selector: "hideCircleAnimation:", userInfo: i, repeats: false)
            }
//            NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "dropCircleAnimation:", userInfo: 0, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.05, target: self, selector: "dropCircleAnimation:", userInfo: 1, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.1, target: self, selector: "dropCircleAnimation:", userInfo: 2, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.15, target: self, selector: "dropCircleAnimation:", userInfo: 3, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.20, target: self, selector: "dropCircleAnimation:", userInfo: 4, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.25, target: self, selector: "dropCircleAnimation:", userInfo: 5, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.30, target: self, selector: "dropCircleAnimation:", userInfo: 6, repeats: false)
            
            //Round 2
            time += 0.35
            for i in 7...11 {
                NSTimer.scheduledTimerWithTimeInterval(time, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
            }
//            NSTimer.scheduledTimerWithTimeInterval(5.35, target: self, selector: "dropCircleAnimation:", userInfo: 7, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35, target: self, selector: "dropCircleAnimation:", userInfo: 8, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35, target: self, selector: "dropCircleAnimation:", userInfo: 9, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35, target: self, selector: "dropCircleAnimation:", userInfo: 10, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35, target: self, selector: "dropCircleAnimation:", userInfo: 11, repeats: false)
            
            //Round 3
            time = 4.75
            for i in 12...17 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
            }
//            NSTimer.scheduledTimerWithTimeInterval(5.4, target: self, selector: "dropCircleAnimation:", userInfo: 12, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.45, target: self, selector: "dropCircleAnimation:", userInfo: 13, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.5, target: self, selector: "dropCircleAnimation:", userInfo: 14, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.6, target: self, selector: "dropCircleAnimation:", userInfo: 15, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.65, target: self, selector: "dropCircleAnimation:", userInfo: 16, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.7, target: self, selector: "dropCircleAnimation:", userInfo: 17, repeats: false)
            //Round 4
            time = 7.75
            for i in 18...32 {
                NSTimer.scheduledTimerWithTimeInterval(time, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
            }
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 18, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 19, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 20, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 21, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 22, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 23, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 24, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 25, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 26, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 27, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 28, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 29, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 30, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 31, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75, target: self, selector: "dropCircleAnimation:", userInfo: 32, repeats: false)
        }
//        if self.respondsToSelector("hideCircleAnimation:") {
//            NSTimer.scheduledTimerWithTimeInterval(5 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 0, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.05 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 1, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.1 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 2, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.15 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 3, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.20 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 4, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.25 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 5, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.30 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 6, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 7, repeats: false)
//            
//            NSTimer.scheduledTimerWithTimeInterval(5.35 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 8, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 9, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 10, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.35 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 11, repeats: false)
//            
//            NSTimer.scheduledTimerWithTimeInterval(5.4 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 12, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.45 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 13, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.5 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 14, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.6 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 15, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.65 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 16, repeats: false)
//            
//            NSTimer.scheduledTimerWithTimeInterval(5.7 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 17, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 18, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 19, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 20, repeats: false)
//            
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 21, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 22, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 23, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 24, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 25, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 26, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 27, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 28, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 29, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 30, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 31, repeats: false)
//            NSTimer.scheduledTimerWithTimeInterval(5.75 + 0.5, target: self, selector: "hideCircleAnimation:", userInfo: 32, repeats: false)
//        }

        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "drawArc",
            userInfo: nil, repeats: false)
    }

//    func addCircle(position:NSInteger){
//        if self.respondsToSelector("drawCircleAnimation:") {
//            NSTimer.scheduledTimerWithTimeInterval(1.45, target: self, selector: "drawCircleAnimation:", userInfo: position, repeats: false)
//        }
//    }
}

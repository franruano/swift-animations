//
//  HolderView.swift
//  poc_animation
//
//  Created by Suarez, Francisco (iOS Developer) on 26/08/2015.
//  Copyright (c) 2015 Francisco Ruano. All rights reserved.
//

import UIKit

class HolderView: UIView {

    let arcLayer = ArcLayer()
    
    var redRectangleLayer: RectangleNewLayer?
    var circleOneLayer: OvalLayer?
    var arrOvalLayers = [OvalLayer]()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //self.backgroundColor = UIColor.orangeColor()
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
            //Round 4
            time += 0.25
            for i in 8...11 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "drawCircleAnimation:", userInfo: i, repeats: false)
            }
            //Round 4
            time += 0.55
            for i in 12...32 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "drawCircleAnimation:", userInfo: i, repeats: false)
            }
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
            //Round 2
            time += 0.35
            for i in 7...11 {
                NSTimer.scheduledTimerWithTimeInterval(time, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
            }
            //Round 3
            time = 4.75
            for i in 12...17 {
                let initialTime = time + 0.05 * Double(i)
                NSTimer.scheduledTimerWithTimeInterval(initialTime, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
            }
            //Round 4
            time = 7.75
            for i in 18...32 {
                NSTimer.scheduledTimerWithTimeInterval(time, target: self, selector: "dropCircleAnimation:", userInfo: i, repeats: false)
            }
        }

        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "drawArc",
            userInfo: nil, repeats: false)
    }

}

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
        var finalBottom = CGRect()
        var finalHidden = CGRect()
        
        var initialRect: CGRect
        var finalRect: CGRect
        
        var delay:Float
        
        init(initialRect: CGRect, finalRect: CGRect, delay: Float) {
            self.initialRect = initialRect
            self.finalRect = finalRect
            
            finalBottom = CGRectMake(finalRect.origin.x, 310, finalRect.width, finalRect.height)
            finalHidden = CGRectMake(finalBottom.origin.x, 330, 2, 2)
            
            self.delay = delay
        }
    }
    
    var redRectangleLayer: RectangleNewLayer?
    var circleOneLayer: OvalLayer?
    let arrOvalCoordenates:[ovalCoordenates] = {
        var _arrOvalCoordenates = [ovalCoordenates]()
        let oval0 = ovalCoordenates(
            initialRect: CGRect(x: 4.5, y: 295.0, width: 0.0, height: 0.0),
            finalRect: CGRect(x: 4.5, y: 295.0, width: 25.0, height: 25.0),
            delay: 1.45)
        
        let oval1 = ovalCoordenates(initialRect: CGRect(x: 32.5, y: 260.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 30.5, y: 260.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval2 = ovalCoordenates(initialRect: CGRect(x: 55.5, y: 290.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 55.5, y: 290.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval3 = ovalCoordenates(initialRect: CGRect(x: 50.5, y: 210.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 50.5, y: 210.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval4 = ovalCoordenates(initialRect: CGRect(x: 70.5, y: 250.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 70.5, y: 250.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval5 = ovalCoordenates(initialRect: CGRect(x: 85.5, y: 210.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 85.5, y: 210.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval6 = ovalCoordenates(initialRect: CGRect(x: 105.5, y: 270.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 105.5, y: 270.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval7 = ovalCoordenates(initialRect: CGRect(x: 110.5, y: 190.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 110.5, y: 190.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval8 = ovalCoordenates(initialRect: CGRect(x: 105.5, y: 150.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 105.5, y: 150.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval9 = ovalCoordenates(initialRect: CGRect(x: 75.5, y: 170.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 75.5, y: 170.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval10 = ovalCoordenates(initialRect: CGRect(x: 120.5, y: 220.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 120.5, y: 220.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval11 = ovalCoordenates(initialRect: CGRect(x: 150.5, y: 250.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 150.5, y: 250.0, width: 25.0, height: 25.0), delay: 1.45)
        
        let oval12 = ovalCoordenates(initialRect: CGRect(x: 145.5, y: 110.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 145.5, y: 110.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval13 = ovalCoordenates(initialRect: CGRect(x: 140.5, y: 140.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 140.5, y: 140.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval14 = ovalCoordenates(initialRect: CGRect(x: 160.5, y: 180.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 160.5, y: 180.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval15 = ovalCoordenates(initialRect: CGRect(x: 180.5, y: 210.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 180.5, y: 210.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval16 = ovalCoordenates(initialRect: CGRect(x: 215.5, y: 240.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 215.5, y: 240.0, width: 25.0, height: 25.0), delay: 1.45)

        let oval17 = ovalCoordenates(initialRect: CGRect(x: 180.5, y: 95.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 180.5, y: 95.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval18 = ovalCoordenates(initialRect: CGRect(x: 195.5, y: 140.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 195.5, y: 140.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval19 = ovalCoordenates(initialRect: CGRect(x: 215.5, y: 205.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 215.5, y: 205.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval20 = ovalCoordenates(initialRect: CGRect(x: 245.5, y: 225.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 245.5, y: 255.0, width: 25.0, height: 25.0), delay: 1.45)

        let oval21 = ovalCoordenates(initialRect: CGRect(x: 210.5, y: 65.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 210.5, y: 65.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval22 = ovalCoordenates(initialRect: CGRect(x: 230.5, y: 110.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 230.5, y: 110.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval23 = ovalCoordenates(initialRect: CGRect(x: 205.5, y: 180.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 205.5, y: 180.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval24 = ovalCoordenates(initialRect: CGRect(x: 255.5, y: 185.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 255.5, y: 185.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval25 = ovalCoordenates(initialRect: CGRect(x: 280.5, y: 235.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 280.5, y: 235.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval26 = ovalCoordenates(initialRect: CGRect(x: 285.5, y: 280.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 285.5, y: 280.0, width: 25.0, height: 25.0), delay: 1.45)
        
        let oval27 = ovalCoordenates(initialRect: CGRect(x: 250.5, y: 35.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 250.5, y: 35.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval28 = ovalCoordenates(initialRect: CGRect(x: 280.5, y: 25.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 280.5, y: 25.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval29 = ovalCoordenates(initialRect: CGRect(x: 250.5, y: 90.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 250.5, y: 90.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval30 = ovalCoordenates(initialRect: CGRect(x: 285.5, y: 120.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 285.5, y: 120.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval31 = ovalCoordenates(initialRect: CGRect(x: 290.5, y: 65.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 290.5, y: 65.0, width: 25.0, height: 25.0), delay: 1.45)
        let oval32 = ovalCoordenates(initialRect: CGRect(x: 300.5, y: 160.0, width: 0.0, height: 0.0), finalRect: CGRect(x: 300.5, y: 160.0, width: 25.0, height: 25.0), delay: 1.45)
        
        
        _arrOvalCoordenates.append(oval0)
        _arrOvalCoordenates.append(oval1)
        _arrOvalCoordenates.append(oval2)
        _arrOvalCoordenates.append(oval3)
        _arrOvalCoordenates.append(oval4)
        _arrOvalCoordenates.append(oval5)
        _arrOvalCoordenates.append(oval6)
        _arrOvalCoordenates.append(oval7)
        _arrOvalCoordenates.append(oval8)
        _arrOvalCoordenates.append(oval9)
        _arrOvalCoordenates.append(oval10)
        _arrOvalCoordenates.append(oval11)
        _arrOvalCoordenates.append(oval12)
        _arrOvalCoordenates.append(oval13)
        _arrOvalCoordenates.append(oval14)
        _arrOvalCoordenates.append(oval15)
        _arrOvalCoordenates.append(oval16)
        _arrOvalCoordenates.append(oval17)
        _arrOvalCoordenates.append(oval18)
        _arrOvalCoordenates.append(oval19)
        _arrOvalCoordenates.append(oval20)
        _arrOvalCoordenates.append(oval21)
        _arrOvalCoordenates.append(oval22)
        _arrOvalCoordenates.append(oval23)
        _arrOvalCoordenates.append(oval24)
        _arrOvalCoordenates.append(oval25)
        _arrOvalCoordenates.append(oval26)
        _arrOvalCoordenates.append(oval27)
        _arrOvalCoordenates.append(oval28)
        _arrOvalCoordenates.append(oval29)
        _arrOvalCoordenates.append(oval30)
        _arrOvalCoordenates.append(oval31)
        _arrOvalCoordenates.append(oval32)
        
        return _arrOvalCoordenates
        }()
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
             NSTimer.scheduledTimerWithTimeInterval(2.80, target: self, selector: "drawCircleAnimation:", userInfo: 9, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(2.90, target: self, selector: "drawCircleAnimation:", userInfo: 10, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(3.00, target: self, selector: "drawCircleAnimation:", userInfo: 11, repeats: false)
            
            NSTimer.scheduledTimerWithTimeInterval(4.00, target: self, selector: "drawCircleAnimation:", userInfo: 12, repeats: false)
             NSTimer.scheduledTimerWithTimeInterval(4.10, target: self, selector: "drawCircleAnimation:", userInfo: 13, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.15, target: self, selector: "drawCircleAnimation:", userInfo: 14, repeats: false)
             NSTimer.scheduledTimerWithTimeInterval(4.20, target: self, selector: "drawCircleAnimation:", userInfo: 15, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.25, target: self, selector: "drawCircleAnimation:", userInfo: 16, repeats: false)

            NSTimer.scheduledTimerWithTimeInterval(4.15, target: self, selector: "drawCircleAnimation:", userInfo: 17, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.30, target: self, selector: "drawCircleAnimation:", userInfo: 18, repeats: false)
             NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 19, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 20, repeats: false)

            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 21, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 22, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 23, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 24, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 25, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 26, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 27, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 28, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 29, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 30, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 31, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(4.35, target: self, selector: "drawCircleAnimation:", userInfo: 32, repeats: false)
        }
        if self.respondsToSelector("dropCircleAnimation:") {
            NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "dropCircleAnimation:", userInfo: 0, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.05, target: self, selector: "dropCircleAnimation:", userInfo: 1, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "dropCircleAnimation:", userInfo: 2, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.05, target: self, selector: "dropCircleAnimation:", userInfo: 3, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "dropCircleAnimation:", userInfo: 4, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.05, target: self, selector: "dropCircleAnimation:", userInfo: 5, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "dropCircleAnimation:", userInfo: 6, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.05, target: self, selector: "dropCircleAnimation:", userInfo: 7, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "dropCircleAnimation:", userInfo: 8, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.05, target: self, selector: "dropCircleAnimation:", userInfo: 9, repeats: false)
        }
        
        if self.respondsToSelector("hideCircleAnimation:") {
            NSTimer.scheduledTimerWithTimeInterval(5.50, target: self, selector: "hideCircleAnimation:", userInfo: 0, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(5.55, target: self, selector: "hideCircleAnimation:", userInfo: 1, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(6.50, target: self, selector: "hideCircleAnimation:", userInfo: 2, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(6.55, target: self, selector: "hideCircleAnimation:", userInfo: 3, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(7.50, target: self, selector: "hideCircleAnimation:", userInfo: 4, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(7.55, target: self, selector: "hideCircleAnimation:", userInfo: 5, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(8.50, target: self, selector: "hideCircleAnimation:", userInfo: 6, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(8.55, target: self, selector: "hideCircleAnimation:", userInfo: 7, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(9.50, target: self, selector: "hideCircleAnimation:", userInfo: 8, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(9.55, target: self, selector: "hideCircleAnimation:", userInfo: 9, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(10.50, target: self, selector: "hideCircleAnimation:", userInfo: 10, repeats: false)
            NSTimer.scheduledTimerWithTimeInterval(11.55, target: self, selector: "hideCircleAnimation:", userInfo: 11, repeats: false)
        }
    }

//    func addCircle(position:NSInteger){
//        if self.respondsToSelector("drawCircleAnimation:") {
//            NSTimer.scheduledTimerWithTimeInterval(1.45, target: self, selector: "drawCircleAnimation:", userInfo: position, repeats: false)
//        }
//    }
}

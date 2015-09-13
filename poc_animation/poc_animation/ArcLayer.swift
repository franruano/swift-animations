//
//  ArcLayer.swift
//  SBLoader
//
//  Created by Satraj Bambra on 2015-03-20.
//  Copyright (c) 2015 Satraj Bambra. All rights reserved.
//

import UIKit

class ArcLayer: CAShapeLayer {
  
  let animationDuration: CFTimeInterval = 0.18
    let animationDelay: CFTimeInterval = 1
  
  override init!() {
    super.init()
    fillColor = UIColor.blueColor().CGColor
    path = arcPathStarting.CGPath
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  var arcPathPre: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 300.0))
    arcPath.addLineToPoint(CGPoint(x: 335.0, y: 300.0))
    arcPath.addLineToPoint(CGPoint(x: 335.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathStarting: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 300.0))
    arcPath.addCurveToPoint(CGPoint(x: 335.0, y: 300.0), controlPoint1: CGPoint(x: 110.0, y: 280.0), controlPoint2: CGPoint(x: 160.0, y: 320.0))
    arcPath.addLineToPoint(CGPoint(x: 335.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathLow: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 300.0))
    arcPath.addCurveToPoint(CGPoint(x: 335.0, y: 300.0), controlPoint1: CGPoint(x: 110.0, y: 320.0), controlPoint2: CGPoint(x: 160.0, y: 280.0))
    arcPath.addLineToPoint(CGPoint(x: 335.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathMid: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 265.0))
    arcPath.addCurveToPoint(CGPoint(x: 335.0, y: 265.0), controlPoint1: CGPoint(x: 110.0, y: 245.0), controlPoint2: CGPoint(x: 160.0, y: 285.0))
    arcPath.addLineToPoint(CGPoint(x: 335.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathHigh: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 230.0))
    arcPath.addCurveToPoint(CGPoint(x: 335.0, y: 230.0), controlPoint1: CGPoint(x: 110.0, y: 250.0), controlPoint2: CGPoint(x: 160.0, y: 210.0))
    arcPath.addLineToPoint(CGPoint(x: 335.0, y: 335.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
    arcPath.closePath()
    return arcPath
  }
    
    var arcPathHighTwo: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: 335.0))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 195.0))
        arcPath.addCurveToPoint(CGPoint(x: 335.0, y: 195.0), controlPoint1: CGPoint(x: 110.0, y: 175.0), controlPoint2: CGPoint(x: 160.0, y: 215.0))
        arcPath.addLineToPoint(CGPoint(x: 335.0, y: 335.0))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
        arcPath.closePath()
        return arcPath
    }
  
  var arcPathComplete: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: 100.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: -5.0))
    arcPath.addLineToPoint(CGPoint(x: 100.0, y: -5.0))
    arcPath.addLineToPoint(CGPoint(x: 100.0, y: 100.0))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 100.0))
    arcPath.closePath()
    return arcPath
  }
  
  func animate() {
    var arcAnimationPre: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationPre.fromValue = arcPathPre.CGPath
    arcAnimationPre.toValue = arcPathStarting.CGPath
    arcAnimationPre.beginTime = 0.0
    arcAnimationPre.duration = animationDuration  + animationDelay
    
    var arcAnimationLow: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationLow.fromValue = arcPathStarting.CGPath
    arcAnimationLow.toValue = arcPathLow.CGPath
    arcAnimationLow.beginTime = arcAnimationPre.beginTime + arcAnimationPre.duration
    arcAnimationLow.duration = animationDuration  + animationDelay
    
    var arcAnimationMid: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationMid.fromValue = arcPathLow.CGPath
    arcAnimationMid.toValue = arcPathMid.CGPath
    arcAnimationMid.beginTime = arcAnimationLow.beginTime + arcAnimationLow.duration
    arcAnimationMid.duration = animationDuration + animationDelay

    var arcAnimationHigh: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationHigh.fromValue = arcPathMid.CGPath
    arcAnimationHigh.toValue = arcPathHigh.CGPath
    arcAnimationHigh.beginTime = arcAnimationMid.beginTime + arcAnimationMid.duration
    arcAnimationHigh.duration = animationDuration + animationDelay
    
    var arcAnimationTwo: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationTwo.fromValue = arcPathHigh.CGPath
    arcAnimationTwo.toValue = arcPathHighTwo.CGPath
    arcAnimationTwo.beginTime = arcAnimationHigh.beginTime + arcAnimationHigh.duration
    arcAnimationTwo.duration = animationDuration + animationDelay

//    var arcAnimationComplete: CABasicAnimation = CABasicAnimation(keyPath: "path")
//    arcAnimationComplete.fromValue = arcPathHigh.CGPath
//    arcAnimationComplete.toValue = arcPathComplete.CGPath
//    arcAnimationComplete.beginTime = arcAnimationHigh.beginTime + arcAnimationHigh.duration
//    arcAnimationComplete.duration = animationDuration
    
    var arcAnimationGroup: CAAnimationGroup = CAAnimationGroup()
//    arcAnimationGroup.animations = [arcAnimationPre, arcAnimationLow, arcAnimationMid,
//        arcAnimationHigh, arcAnimationComplete]
    arcAnimationGroup.animations = [arcAnimationPre, arcAnimationLow, arcAnimationMid, arcAnimationHigh, arcAnimationTwo]
    arcAnimationGroup.duration = arcAnimationTwo.beginTime + arcAnimationTwo.duration
    arcAnimationGroup.fillMode = kCAFillModeForwards
    arcAnimationGroup.removedOnCompletion = false
    addAnimation(arcAnimationGroup, forKey: nil)
  }
}

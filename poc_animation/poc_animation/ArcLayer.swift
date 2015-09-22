
import UIKit

class ArcLayer: CAShapeLayer {
  
  
  
  override init!() {
    super.init()
    fillColor = UIColor.blackColor().CGColor
    path = arcPathStarting.CGPath
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    var currentTide = initialTide
    
  var arcPathPre: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: currentTide))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: currentTide))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathStarting: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: currentTide))
    arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: currentTide), controlPoint1: CGPoint(x: leftPeakPoint, y: currentTide-tideLevel), controlPoint2: CGPoint(x: rightPeakPoint, y: currentTide))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathLow: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: currentTide - tideIncrement))
    arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: currentTide - tideIncrement), controlPoint1: CGPoint(x: leftPeakPoint, y: currentTide+tideLevel), controlPoint2: CGPoint(x: rightPeakPoint, y: currentTide - tideIncrement-tideLevel))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathMid: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 265.0))
    arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 265.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 245.0), controlPoint2: CGPoint(x: 160.0, y: 285.0))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.closePath()
    return arcPath
  }
  
  var arcPathHigh: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 230.0))
    arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 230.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 250.0), controlPoint2: CGPoint(x: 160.0, y: 210.0))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.closePath()
    return arcPath
  }
    
    var arcPathHighTwo: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 195.0))
        arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 195.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 175.0), controlPoint2: CGPoint(x: 160.0, y: 215.0))
        arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.closePath()
        return arcPath
    }
    
    var arcPathHighThree: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 160.0))
        arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 160.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 180.0), controlPoint2: CGPoint(x: 160.0, y: 140.0))
        arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.closePath()
        return arcPath
    }
    
    var arcPathHighFour: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 125.0))
        arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 125.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 105.0), controlPoint2: CGPoint(x: 160.0, y: 145.0))
        arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.closePath()
        return arcPath
    }
    
    var arcPathHighFive: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 90.0))
        arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 90.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 110.0), controlPoint2: CGPoint(x: 160.0, y: 70.0))
        arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 335.0))
        arcPath.closePath()
        return arcPath
    }
    
    var arcPathHighSix: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 55.0))
        arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 55.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 35.0), controlPoint2: CGPoint(x: 160.0, y: 75.0))
        arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.closePath()
        return arcPath
    }
    
    var arcPathHighSeven: UIBezierPath {
        var arcPath = UIBezierPath()
        arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: 20.0))
        arcPath.addCurveToPoint(CGPoint(x: squareViewSize, y: 20.0), controlPoint1: CGPoint(x: leftPeakPoint, y: 40.0), controlPoint2: CGPoint(x: 160.0, y: 0.0))
        arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
        arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
        arcPath.closePath()
        return arcPath
    }
  
  var arcPathComplete: UIBezierPath {
    var arcPath = UIBezierPath()
    arcPath.moveToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: 0.0))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: 0.0))
    arcPath.addLineToPoint(CGPoint(x: squareViewSize, y: squareViewSize))
    arcPath.addLineToPoint(CGPoint(x: 0.0, y: squareViewSize))
    arcPath.closePath()
    return arcPath
  }
  
  func animate() {
    var arcAnimationPre: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationPre.fromValue = arcPathPre.CGPath
    arcAnimationPre.toValue = arcPathStarting.CGPath
    arcAnimationPre.beginTime = 0.0
    arcAnimationPre.duration = waterDuration/1.8
    
    var arcAnimationLow: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationLow.fromValue = arcPathStarting.CGPath
    arcAnimationLow.toValue = arcPathLow.CGPath
    arcAnimationLow.beginTime = arcAnimationPre.beginTime + arcAnimationPre.duration
    arcAnimationLow.duration = waterDuration
    
    var arcAnimationMid: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationMid.fromValue = arcPathStarting.CGPath
    arcAnimationMid.toValue = arcPathMid.CGPath
    arcAnimationMid.beginTime = arcAnimationPre.beginTime + arcAnimationPre.duration
    arcAnimationMid.duration = waterDuration

    var arcAnimationHigh: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationHigh.fromValue = arcPathMid.CGPath
    arcAnimationHigh.toValue = arcPathHigh.CGPath
    arcAnimationHigh.beginTime = arcAnimationMid.beginTime + arcAnimationMid.duration
    arcAnimationHigh.duration = waterDuration
    
    var arcAnimationTwo: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationTwo.fromValue = arcPathHigh.CGPath
    arcAnimationTwo.toValue = arcPathHighTwo.CGPath
    arcAnimationTwo.beginTime = arcAnimationHigh.beginTime + arcAnimationHigh.duration
    arcAnimationTwo.duration = waterDuration
    
    var arcAnimationThree: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationThree.fromValue = arcPathHighTwo.CGPath
    arcAnimationThree.toValue = arcPathHighThree.CGPath
    arcAnimationThree.beginTime = arcAnimationTwo.beginTime + arcAnimationTwo.duration
    arcAnimationThree.duration = waterDuration
    
    var arcAnimationFour: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationFour.fromValue = arcPathHighThree.CGPath
    arcAnimationFour.toValue = arcPathHighFour.CGPath
    arcAnimationFour.beginTime = arcAnimationThree.beginTime + arcAnimationThree.duration
    arcAnimationFour.duration = waterDuration
    
    var arcAnimationFive: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationFive.fromValue = arcPathHighFour.CGPath
    arcAnimationFive.toValue = arcPathHighFive.CGPath
    arcAnimationFive.beginTime = arcAnimationFour.beginTime + arcAnimationFour.duration
    arcAnimationFive.duration = waterDuration
    
    var arcAnimationSix: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationSix.fromValue = arcPathHighFive.CGPath
    arcAnimationSix.toValue = arcPathHighSix.CGPath
    arcAnimationSix.beginTime = arcAnimationFive.beginTime + arcAnimationFive.duration
    arcAnimationSix.duration = waterDuration
    
    var arcAnimationSeven: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationSeven.fromValue = arcPathHighSix.CGPath
    arcAnimationSeven.toValue = arcPathHighSeven.CGPath
    arcAnimationSeven.beginTime = arcAnimationSix.beginTime + arcAnimationSix.duration
    arcAnimationSeven.duration = waterDuration

    var arcAnimationComplete: CABasicAnimation = CABasicAnimation(keyPath: "path")
    arcAnimationComplete.fromValue = arcPathHighSeven.CGPath
    arcAnimationComplete.toValue = arcPathComplete.CGPath
    arcAnimationComplete.beginTime = arcAnimationSeven.beginTime + arcAnimationSeven.duration
    arcAnimationComplete.duration = waterDuration
    
    var arcAnimationGroup: CAAnimationGroup = CAAnimationGroup()
    
    arcAnimationGroup.animations = [arcAnimationPre, arcAnimationLow, arcAnimationMid, arcAnimationHigh, arcAnimationTwo,arcAnimationThree, arcAnimationFour, arcAnimationFive, arcAnimationSix, arcAnimationSeven, arcAnimationComplete]
    arcAnimationGroup.duration = arcAnimationComplete.beginTime + arcAnimationComplete.duration
    arcAnimationGroup.fillMode = kCAFillModeForwards
    arcAnimationGroup.removedOnCompletion = false
    addAnimation(arcAnimationGroup, forKey: nil)
  }
}

import UIKit

class OvalLayer: CAShapeLayer {
  
  let animationDuration: CFTimeInterval = 0.2
    
  
  override init!() {
    super.init()
    fillColor = UIColor.redColor().CGColor
    //path = ovalPathSmall.CGPath
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  /*
  var ovalPathSmall: UIBezierPath {
    return UIBezierPath(ovalInRect: CGRect(x: 4.5, y: 295.0, width: 0.0, height: 0.0))
  }
  
  var ovalPathLarge: UIBezierPath {
    return UIBezierPath(ovalInRect: CGRect(x: 4.5, y: 295.0, width: 30.0, height: 30.0))
  }
    
    var ovalPathMedium: UIBezierPath {
        return UIBezierPath(ovalInRect: CGRect(x: 4.5, y: 295.0, width: 25.0, height: 25.0))
    }
  */
//  var ovalPathSquishVertical: UIBezierPath {
//    return UIBezierPath(ovalInRect: CGRect(x: 2.5, y: 20.0, width: 95.0, height: 90.0))
//  }
//  
//  var ovalPathSquishHorizontal: UIBezierPath {
//    return UIBezierPath(ovalInRect: CGRect(x: 5.0, y: 20.0, width: 90.0, height: 90.0))
//  }
  
    func expand(initialOval: UIBezierPath, finalOval: UIBezierPath) {
        
        var expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = initialOval.CGPath
        expandAnimation.toValue = finalOval.CGPath
        expandAnimation.duration = animationDuration
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.removedOnCompletion = false
        addAnimation(expandAnimation, forKey: nil)
        
    }
    
    func move(initialOval: UIBezierPath, finalOval: UIBezierPath) {
        
        var expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = initialOval.CGPath
        expandAnimation.toValue = finalOval.CGPath
        expandAnimation.duration = animationDuration
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.removedOnCompletion = false
        addAnimation(expandAnimation, forKey: nil)
        
    }
    
    func hide(initialOval: UIBezierPath, finalOval: UIBezierPath) {
        
        var expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = initialOval.CGPath
        expandAnimation.toValue = finalOval.CGPath
        expandAnimation.duration = animationDuration+0.5
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.removedOnCompletion = false
        addAnimation(expandAnimation, forKey: nil)
        
    }
  
//  func wobble() {
//    // 1
//    var wobbleAnimation1: CABasicAnimation = CABasicAnimation(keyPath: "path")
//    wobbleAnimation1.fromValue = ovalPathLarge.CGPath
//    wobbleAnimation1.toValue = ovalPathSquishVertical.CGPath
//    wobbleAnimation1.beginTime = 0.0
//    wobbleAnimation1.duration = animationDuration
//    
//    // 2
//    var wobbleAnimation2: CABasicAnimation = CABasicAnimation(keyPath: "path")
//    wobbleAnimation2.fromValue = ovalPathSquishVertical.CGPath
//    wobbleAnimation2.toValue = ovalPathSquishHorizontal.CGPath
//    wobbleAnimation2.beginTime = wobbleAnimation1.beginTime + wobbleAnimation1.duration
//    wobbleAnimation2.duration = animationDuration
//    
//    // 3
//    var wobbleAnimation3: CABasicAnimation = CABasicAnimation(keyPath: "path")
//    wobbleAnimation3.fromValue = ovalPathSquishHorizontal.CGPath
//    wobbleAnimation3.toValue = ovalPathSquishVertical.CGPath
//    wobbleAnimation3.beginTime = wobbleAnimation2.beginTime + wobbleAnimation2.duration
//    wobbleAnimation3.duration = animationDuration
//    
//    // 4
//    var wobbleAnimation4: CABasicAnimation = CABasicAnimation(keyPath: "path")
//    wobbleAnimation4.fromValue = ovalPathSquishVertical.CGPath
//    wobbleAnimation4.toValue = ovalPathLarge.CGPath
//    wobbleAnimation4.beginTime = wobbleAnimation3.beginTime + wobbleAnimation3.duration
//    wobbleAnimation4.duration = animationDuration
//    
//    // 5
//    var wobbleAnimationGroup: CAAnimationGroup = CAAnimationGroup()
//    wobbleAnimationGroup.animations = [wobbleAnimation1, wobbleAnimation2, wobbleAnimation3,
//        wobbleAnimation4]
//    wobbleAnimationGroup.duration = wobbleAnimation4.beginTime + wobbleAnimation4.duration
//    wobbleAnimationGroup.repeatCount = 2
//    addAnimation(wobbleAnimationGroup, forKey: nil)
//  }
  
//  func contract() {
//    var contractAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
//    contractAnimation.fromValue = ovalPathLarge.CGPath
//    contractAnimation.toValue = ovalPathMedium.CGPath
//    contractAnimation.duration = animationDuration
//    contractAnimation.fillMode = kCAFillModeForwards
//    contractAnimation.removedOnCompletion = false
//    addAnimation(contractAnimation, forKey: nil)
//  }
}

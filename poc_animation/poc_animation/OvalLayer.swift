import UIKit

class OvalLayer: CAShapeLayer {
  
  let animationDuration: CFTimeInterval = 0.2
    
  
  override init!() {
    super.init()
    fillColor = UIColor.blackColor().CGColor
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

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
 
}

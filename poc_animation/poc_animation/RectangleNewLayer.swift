
import UIKit

class RectangleNewLayer: CAShapeLayer {
  
    var sideSize : CGFloat = 300.0
    
  override init!() {
    super.init()
    fillColor = UIColor.clearColor().CGColor
    lineWidth = 7.0
    path = rectangleLargePathFull.CGPath
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    init (size:CGFloat) {
        super.init()
        fillColor = UIColor.clearColor().CGColor
        lineWidth = 7.0
        sideSize = size
        path = rectangleLargePathFull.CGPath
    }
    
  var rectangleLargePathFull: UIBezierPath {
    var rectanglePath = UIBezierPath()
    rectanglePath.moveToPoint(CGPoint(x: 0.0, y: sideSize))
    rectanglePath.addLineToPoint(CGPoint(x: 0.0, y: 0.0))
    rectanglePath.addLineToPoint(CGPoint(x: sideSize, y: 0.0))
    rectanglePath.addLineToPoint(CGPoint(x: sideSize, y: sideSize))
    rectanglePath.addLineToPoint(CGPoint(x: -lineWidth / 2, y: sideSize))
    rectanglePath.closePath()
    return rectanglePath
  }
  
    func animateStrokeWithColor (color: UIColor) {
        strokeColor = color.CGColor
        var strokeAnimation: CABasicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeAnimation.fromValue = 0.0
        strokeAnimation.toValue = 1.0
        strokeAnimation.duration = 0.8
        addAnimation(strokeAnimation, forKey: nil)
    }
    
}

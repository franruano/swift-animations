//
//  ViewController.swift
//  poc_animation
//
//  Created by Suarez, Francisco (iOS Developer) on 26/08/2015.
//  Copyright (c) 2015 Francisco Ruano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, HolderStatusDelegate {

    let leftPadding = CGFloat(20.0)
    
    var holder: HolderView?
    var iconView: UIImageView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let frame = self.view.frame
        let sideLength = frame.width - 2*leftPadding
        
        iconView = UIImageView (frame: CGRect(x: (frame.width - sideLength)/2, y: (frame.height - sideLength)/2, width: sideLength - leftPadding, height: sideLength - leftPadding))
        iconView?.center = self.view.center
        iconView?.backgroundColor = UIColor.blueColor()
        iconView?.hidden = true
        self.view.addSubview(iconView!)
        
        holder = HolderView (frame: CGRect(x: (frame.width - sideLength)/2, y: (frame.height - sideLength)/2, width: sideLength, height: sideLength))
        holder?.delegate = self
        self.view.addSubview(holder!)
        
        holder!.addSquareBorder()
        holder!.addCircle()
    }
    
    //MARK: - Holder Delegate
    func animationExpanded() {
        iconView?.hidden = false
    }
    
    func animationCompleted() {
        holder!.removeFromSuperview()
        holder = nil
        var label: UILabel
        if let iconView = iconView {
            label = UILabel(frame: CGRect(x: iconView.frame.origin.x, y: iconView.frame.origin.y + iconView.frame.height+leftPadding, width: iconView.frame.width, height: 30))
            
            label.textColor = UIColor.blackColor()
            label.font = UIFont.boldSystemFontOfSize(30)
            label.textAlignment = NSTextAlignment.Center
            label.text = "My Audio Diary"
            label.transform = CGAffineTransformScale(label.transform, 0.25, 0.25)
            label.sizeToFit()
            view.addSubview(label)
            UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1, options: UIViewAnimationOptions.CurveEaseInOut,
                animations: ({
                    label.transform = CGAffineTransformScale(label.transform, 4.0, 4.0)
                }), completion: { finished in
            
            })
        }
    }
    
    
    
   }


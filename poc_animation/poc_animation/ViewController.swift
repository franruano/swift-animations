//
//  ViewController.swift
//  poc_animation
//
//  Created by Suarez, Francisco (iOS Developer) on 26/08/2015.
//  Copyright (c) 2015 Francisco Ruano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    private struct Constants {
        let leftPadding = CGFloat(20.0)
//    }
    var holder: HolderView?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let frame = self.view.frame
        let sideLength = frame.width - 2*leftPadding
        
        holder = HolderView (frame: CGRect(x: (frame.width - sideLength)/2, y: (frame.height - sideLength)/2, width: sideLength, height: sideLength))
        self.view.addSubview(holder!)
        
        holder!.addSquareBorder()
        holder!.addCircle()
    }
    
   }


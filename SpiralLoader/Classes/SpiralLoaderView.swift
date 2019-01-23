//
//  SpiralView.swift
//  HongsKitchen
//
//  Created by Ravi Tailor on 21/01/19.
//  Copyright © 2019 Ashu Baweja. All rights reserved.
//

import UIKit

public class SpiralLoaderView {
    
    var loaderView : SpiralAnimationView!
    
    public init(color: UIColor = UIColor.black, alpha : CGFloat = 0.5,rect : CGRect,colorArr : [UIColor]? ,circleCount : Int?, circleWidth : CGFloat? ,speedFactor : Double?) {
        self.loaderView = SpiralAnimationView(frame: CGRect(x: 0, y: 0, width: rect.width, height: rect.height))
        self.loaderView.colorArr = colorArr ?? [UIColor.red,UIColor.yellow]
        self.loaderView.circleCount = circleCount ?? 6
        self.loaderView.lineWidth = circleWidth ?? 4
        self.loaderView.speedFactor = speedFactor ?? 0.9
        self.loaderView.backgroundColor = color.withAlphaComponent(alpha)
        self.loaderView.tag = 5000
        self.loaderView.setup()
    }
    
 
    public func addLoaderToView(_ parentView : UIView) {
        parentView.addSubview(self.loaderView)
    }
    
   public class func removeLoaderFromView (_ parentView: UIView) {
        if let view = parentView.viewWithTag(5000) {
            view.removeFromSuperview()
        }
    }
}

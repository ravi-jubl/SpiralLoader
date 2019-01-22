//
//  SpiralView.swift
//  HongsKitchen
//
//  Created by Ravi Tailor on 21/01/19.
//  Copyright © 2019 Ashu Baweja. All rights reserved.
//

import UIKit

open class SpiralLoaderView: UIView {
    
    class func instanceFromNib() -> UIView? {
        
        let podBundle = Bundle(for: self.classForCoder())
        if let bundleURL = podBundle.url(forResource: "SpiralLoader", withExtension: "bundle") {
            
            if let bundle = Bundle(url: bundleURL) {
                
                return UINib(nibName: "SpiralLoaderView", bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? UIView
                
            }else {
                
               return nil
                
            }
            
        }else {
            
            return nil
            
        }
    }
    
//    class func addLoaderToWindow() {
//            if let window = (UIApplication.shared.delegate as? AppDelegate)?.window {
//                let view = SpiralLoaderView.instanceFromNib()
//                view.frame = window.frame.bounds
//                view.tag = 5000
//                window.addSubview(view)
//                window.bringSubview(toFront: view)
//            }
//    }
    
//    class func removeLoaderFromWindow () {
//            if let window = (UIApplication.shared.delegate as? AppDelegate)?.window,let view = window.viewWithTag(5000) {
//                view.removeFromSuperview()
//            }
//    }
    
    open class func addLoaderToView(_ parentView : UIView) {
        if let view = SpiralLoaderView.instanceFromNib() {
            view.frame = parentView.bounds
            view.tag = 5000
            parentView.addSubview(view)
            parentView.bringSubview(toFront: view)
        }
    }
    
   open class func removeLoaderFromView (_ parentView: UIView) {
        if let view = parentView.viewWithTag(5000) {
            view.removeFromSuperview()
        }
    }
}

//
//  SpiralAnimationView.swift
//  HongsKitchen
//
//  Created by Ravi Tailor on 21/01/19.
//  Copyright © 2019 Ashu Baweja. All rights reserved.
//

import UIKit

@IBDesignable
class SpiralAnimationView: UIView {
    
    @IBInspectable var lineWidth: CGFloat = 4 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var circleCount: Int = 10 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var speedFactor: Double = 0.9 {
        didSet {
            setNeedsLayout()
        }
    }
    
    var colorArr :[UIColor] = [UIColor.red,UIColor.yellow]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    func setup() {
        
        for i in 0 ..< self.circleCount {
            
            let center = CGPoint(x: bounds.midX, y: bounds.midY)
            let radius : CGFloat = min(bounds.width, bounds.height) / 2 - self.lineWidth/2
            let duration : Double = Double(self.circleCount) / Double(self.circleCount - i)
            
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = 0
            animation.toValue = Double.pi * 2
            animation.duration = duration / self.speedFactor
            animation.repeatCount = MAXFLOAT
            
            let circleLayer = CAShapeLayer()
            circleLayer.lineWidth = self.lineWidth
            circleLayer.fillColor = nil
            let index = i % self.colorArr.count
            circleLayer.strokeColor = self.colorArr[index].cgColor
            circleLayer.add(animation, forKey: "rotation")
            
            let path = UIBezierPath(arcCenter: .zero, radius: (radius - CGFloat(i * 8)), startAngle: .pi, endAngle: .pi * 2, clockwise: true)
            circleLayer.position = center
            circleLayer.path = path.cgPath
            
            layer.addSublayer(circleLayer)
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

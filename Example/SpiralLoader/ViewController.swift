//
//  ViewController.swift
//  SpiralLoader
//
//  Created by ravi-jubl on 01/22/2019.
//  Copyright (c) 2019 ravi-jubl. All rights reserved.
//

import UIKit
import SpiralLoader

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loader = SpiralLoaderView(color: UIColor.black, alpha: 0.2, rect: CGRect(x: 0, y: 100, width: self.view.bounds.width, height: self.view.bounds.height), colorArr: [UIColor.red,UIColor.yellow], circleCount: 10, circleWidth: 4.0, speedFactor: 0.8)
        loader.addLoaderToView(self.view)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(remove))
        self.view.addGestureRecognizer(gesture)
//        let loaderView = SpiralAnimationView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
//        loaderView.backgroundColor = UIColor.clear//UIColor.lightGray.withAlphaComponent(0.5)
//        self.view.addSubview(loaderView)
        //SpiralLoaderView.addLoaderToView(self.view)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func remove()  {
        SpiralLoaderView.removeLoaderFromView(self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


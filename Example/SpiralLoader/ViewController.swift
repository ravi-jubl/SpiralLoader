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
        SpiralLoaderView.addLoaderToView(self.view)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


//
//  ViewController.swift
//  UIControlsProject
//
//  Created by Priya on 25/10/18.
//  Copyright © 2018 Priya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myButton : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       myButton.backgroundColor = UIColor.black
        myButton.setTitle("Click Me!!!", for: .normal)
        myButton.titleLabel?.textColor = UIColor.white

    }
    @IBAction func actionOnClick(sender : UIButton){
        //sender.isEnabled = false
    }

}


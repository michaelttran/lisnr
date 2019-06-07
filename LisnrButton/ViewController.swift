//
//  ViewController.swift
//  LisnrButton
//
//  Created by Michael Tran on 6/6/19.
//  Copyright © 2019 Michael Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var color_changed = false // Flag to determine red or blue color change
    var count = 0 // Button clicks to determine Ouch or random number for title
    
    @IBOutlet weak var buttonColorChange: UIButton! //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonColorChangeAction(_ sender: Any) {
        count += 1
        
        if color_changed == false{
          self.buttonColorChange.backgroundColor = UIColor.red
            color_changed = true
        } else {
          self.buttonColorChange.backgroundColor = UIColor.blue
            color_changed = false
        }
        
        if count == 10 {
            buttonColorChange.setTitle("Ouch", for: .normal)
        }
        
        if count == 20 {
            var num = String(Int.random(in:0 ... 10))
            buttonColorChange.setTitle(num, for: .normal)
        }
    }
    
}


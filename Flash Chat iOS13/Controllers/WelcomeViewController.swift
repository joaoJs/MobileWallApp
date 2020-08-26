//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.textAlignment = .center
        titleLabel.text = "WallApp"
        
//        let title = "WallApp"
//        var int: Double = 0.0
//        for c in title {
//            int += 0.1
//            Timer.scheduledTimer(withTimeInterval: int, repeats: false) { (timer) in
//                self.titleLabel.text?.append(c)
//            }
//        }
       
    }
    

}

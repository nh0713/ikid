//
//  SecondViewController.swift
//  iKid
//
//  Created by Nathan Han on 10/25/18.
//  Copyright © 2018 Nathan Han. All rights reserved.
//

import UIKit

class CollegeViewController: UIViewController {

    @IBOutlet var viewJoke: UIView!
    var isFrontVisible: Bool = true
    
    @IBOutlet weak var lblJokeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblJokeText.text = "What do you call a genius at WSU?"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnNext(_ sender: Any) {
        var option: UIView.AnimationOptions = .transitionFlipFromRight
        if self.isFrontVisible {
            self.isFrontVisible = false
            self.lblJokeText.text = "A visitor"
            option = .transitionFlipFromRight
        } else {
            self.isFrontVisible = true
            self.lblJokeText.text = "What do you call a genius at WSU?"
            option = .transitionFlipFromLeft
        }
        
        UIView.transition(with: self.viewJoke, duration: 0.8, options: option, animations: nil, completion: nil)
    }
    
}


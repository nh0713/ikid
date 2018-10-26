//
//  FirstViewController.swift
//  iKid
//
//  Created by Nathan Han on 10/25/18.
//  Copyright © 2018 Nathan Han. All rights reserved.
//

import UIKit

class MarvelViewController: UIViewController {

    @IBOutlet weak var lblJokeText: UILabel!
    var isFrontVisible: Bool = true
    
    @IBOutlet var viewJoke: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblJokeText.text = "Spider-Man: Hey Quicksilver, what has silver hair and can't dodge a bullet?"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnNext(_ sender: Any) {
        var option: UIView.AnimationOptions = .transitionFlipFromRight
        if self.isFrontVisible {
            self.isFrontVisible = false
            self.lblJokeText.text = "Quicksilver: Your uncle..."
            option = .transitionFlipFromRight
        } else {
            self.isFrontVisible = true
            self.lblJokeText.text = "Spider-Man: Hey Quicksilver, what has silver hair and can't dodge a bullet?"
            option = .transitionFlipFromLeft
        }
        
        UIView.transition(with: self.viewJoke, duration: 0.8, options: option, animations: nil, completion: nil)
        
    }
    
}


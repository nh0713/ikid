//
//  TrumpViewController.swift
//  iKid
//
//  Created by Nathan Han on 10/25/18.
//  Copyright © 2018 Nathan Han. All rights reserved.
//

import UIKit

class TrumpViewController: UIViewController {
    
    @IBOutlet weak var lblJokeText: UILabel!
    var isFrontVisible: Bool = true

    @IBOutlet var viewJoke: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblJokeText.text = "How does Trump plan on deporting millions of immigrants?"

    }
    
    @IBAction func btnNext(_ sender: Any) {
        var option: UIView.AnimationOptions = .transitionFlipFromRight
        if self.isFrontVisible {
            self.isFrontVisible = false
            self.lblJokeText.text = "Juan by Juan\n\nDisclaimer: I am not a Trump, supporter nor do I agree with his immigration policies.  This joke is purly for comedic purposes."
            option = .transitionFlipFromRight
        } else {
            self.isFrontVisible = true
            self.lblJokeText.text = "How does Trump plan on deporting millions of immigrants?"
            option = .transitionFlipFromLeft
        }
        
        UIView.transition(with: self.viewJoke, duration: 0.8, options: option, animations: nil, completion: nil)
    }
    
}

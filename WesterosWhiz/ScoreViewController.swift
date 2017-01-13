//
//  ScoreViewController.swift
//  WesterosWhiz
//
//  Created by Ehsan Zaman on 1/10/17.
//  Copyright © 2017 Ehsan Zaman. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    var finalScore = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(finalScore)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

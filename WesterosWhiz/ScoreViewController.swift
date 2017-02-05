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
    
    @IBOutlet weak var playAgain: UIButton!
   
    var finalScore = ""
    var score = Int()
    var highscore = Int()
   

        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "highScore" {
            let VC = segue.destination as! HousesViewController
           VC.score = score
          // VC.highscore = score
            }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score)"

        playAgain.layer.cornerRadius = 5
        
//        if score > highscore {
//        let defaults = UserDefaults.standard
//        
//
//        }


        print(score)
      

         }

           




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

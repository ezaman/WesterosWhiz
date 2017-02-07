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
    
@IBOutlet weak var finalImage: UIImageView!
    @IBOutlet weak var playAgain: UIButton!
   
@IBOutlet weak var finalLabel: UILabel!

    var finalScore = ""
    var score = Int()
    var highscore = Int()
   

        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "highScore" {
            let VC = segue.destination as! HousesViewController
           VC.score = score
//           VC.highscore = score

      

            }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score)"

       if score > 5 {
        finalLabel.text = "Congrats, the throne is yours"
        finalImage.image = #imageLiteral(resourceName: "ironeThrone")
     }else {

        finalLabel.text = "Keep Trying"
        finalImage.image = #imageLiteral(resourceName: "nedstark")
        }

        playAgain.layer.cornerRadius = 5

//if score > highscore {
//
//highscore = score
//}
        
//        let defaults = UserDefaults.standard
//
//        if score > defaults.object(forKey: "realScore") as! Int {
//
//        highscore = defaults.set(score, forKey: "realScore") as! Int
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

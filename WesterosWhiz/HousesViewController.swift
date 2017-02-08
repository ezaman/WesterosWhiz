//
//  HousesViewController.swift
//  WesterosWhiz
//
//  Created by Ehsan Zaman on 1/11/17.
//  Copyright © 2017 Ehsan Zaman. All rights reserved.
//

import UIKit

class HousesViewController: UIViewController {
    
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    var score = Int()
    var highscore = Int()
    var realhighscore = 0
    
    @IBAction func resetAction(_ sender: Any) {
        score = 0
        scoreLabel.text = "\(score)"
        
    }
    //var defaults = UserDefaults.standard
    
    var starkImages: [UIImage] = [#imageLiteral(resourceName: "stark1"), #imageLiteral(resourceName: "stark2"),
                             #imageLiteral(resourceName: "stark3"), #imageLiteral(resourceName: "stark4"),
                             #imageLiteral(resourceName: "stark5"), #imageLiteral(resourceName: "stark6"),
                             #imageLiteral(resourceName: "stark7"), #imageLiteral(resourceName: "stark8"),
                             #imageLiteral(resourceName: "stark9"), #imageLiteral(resourceName: "stark10")]
    
    var targImages: [UIImage] = [#imageLiteral(resourceName: "targ1"), #imageLiteral(resourceName: "targ2"),
                                 #imageLiteral(resourceName: "targ3"), #imageLiteral(resourceName: "targ4"),
                                 #imageLiteral(resourceName: "targ5"), #imageLiteral(resourceName: "targ6"),
                                 #imageLiteral(resourceName: "targ7"), #imageLiteral(resourceName: "targ8"),
                                 #imageLiteral(resourceName: "targ9"), #imageLiteral(resourceName: "targ10")]
    
    var barImages: [UIImage] = [#imageLiteral(resourceName: "bar1"), #imageLiteral(resourceName: "bar2"),
                                #imageLiteral(resourceName: "bar3"), #imageLiteral(resourceName: "bar4"),
                                #imageLiteral(resourceName: "bar5"), #imageLiteral(resourceName: "bar6"),
                                #imageLiteral(resourceName: "bar7"), #imageLiteral(resourceName: "bar8"),
                                #imageLiteral(resourceName: "bar9"), #imageLiteral(resourceName: "bar10")]
    
    var lannImages: [UIImage] = [#imageLiteral(resourceName: "lann1"), #imageLiteral(resourceName: "lann2"),
                                 #imageLiteral(resourceName: "lann3"), #imageLiteral(resourceName: "lann4"),
                                 #imageLiteral(resourceName: "lann5"), #imageLiteral(resourceName: "lann6"),
                                 #imageLiteral(resourceName: "lann7"), #imageLiteral(resourceName: "lann8"),
                                 #imageLiteral(resourceName: "lann9"), #imageLiteral(resourceName: "lann10")]
    
    
    var starkQuestions = ["Where is Winterfell?",
                          "What is the Stark sigil?",
                          "What is the Stark house sword?",
                          "Who founded House Stark?",
                          "The ancient title for Winterfell rulers was:",
                          "Which house has been a long time Stark enemy?",
                          "Who is the current ruler of Winterfell?",
                          "Who is the King Who Knelt?",
                          "How old is House Stark?",
                          "What is House Stark's religion?"]
    
    var starkAnswers = [["The North", "Riverlands","The South"],
                        ["Direwolf", "Stag", "Flower"],
                        ["Longclaw", "Oathkeeper", "Ice"],
                        ["Brandon Stark", "Edrik Stark", "Eddard Stark"],
                        ["King in the North", "Warden of the North", "Lord of Winterfell"],
                        ["House Bolton", "House Karstark", "House Mormont"],
                        ["King Jon I", "King Robb I", "Lord Ramsey"],
                        ["Torrhen Stark", "Benjen Stark","Brandon Stark"],
                        ["8,000+ years", "500 years", "40 years"],
                        ["Old Gods of the Forest", "Faith of the Seven", "Drowned Gods"]]
    
    var targQuestions = ["Who is Aegon the Conqueror?",
                         "How many dragons does Daenerys have?",
                         "Who was Aerys II's hand?",
                         "Which of Daenerys' dragons is the largest?",
                         "What kingdom does Daenerys currently rule?",
                         "How many Targaryens sat on the Iron Throne?",
                         "Who killed Aerys II?",
                         "Who was the longest reigning king?",
                         "Which king was known as 'King Scab'?",
                         "Who was heir of Aerys II?"]
    
    var targAnswers = [["First ruler of Westeros", "A Blackfyre", "Essos King"],
                       ["3", "2", "1"],
                       ["Tywin Lannister", "Mace Tyrell", "Ricard Stark"],
                       ["Drogon", "Rhaegal", "Viserion"],
                       ["Mereen", "Dorne", "Braavos"],
                       ["17", "12", "25"],
                       ["Jaime Lannister", "Tywin Lannister", "Arthur Dayne"],
                       ["Jaehaerys I", "Aegon I", "Maekar I"],
                       ["Aerys II", "Daeron II", "Baelor"],
                       ["Rhaegar", "Daenerys", "Daeron"]]
    
    var baratheonQuestions = ["Who do many call the Usurper?",
                              "Why did Robert rebel against the Crown?",
                              "Who did Robert defeat at the Trident?",
                              "Who is Gendry?",
                              "What is the Baratheon sigil?",
                              "Who killed Joffrey?",
                              "How old is House Baratheon?",
                              "What lands do the Baratheons rule?",
                              "What was Robert's main weapon in battle?",
                              "Who founded House Baratheon?"]
    var baratheonAnswers =
        [["Robert I", "Renly", "Stannis"],
         ["Avenge Lyanna's Disappearance","Murder of his father", "For power"],
         ["Prince Rhaegar", "Daemon Blackfyre","Viserys"],
         ["Robert's bastard", "A squire", "Lord of Harrenhal"],
         ["Stag", "Bear", "Fish"],
         ["Lady Olenna", "Tyrion", "Robb Stark", "Melissandre"],
         ["300 years old", "3,000 years old", "20 years old"],
         ["Stormlands","Riverlands","Vale"],
         ["War hammer", "Valyrian sword", "Ax", "Wildfire"],
         ["Orys", "Borros", "Robar"]]
    
    var lannisterQuestions = ["Who founded House Lannister?",
                              "Who is the current ruler of House Lannister?",
                              "What is the Lannister ancestral seat?",
                              "What is the Lannister sigil animal?",
                              "What is the official house motto?",
                              "Who is the heir of House Lannister?",
                              "How large is the Lannister army?",
                              "Who killed Tywin Lannister?",
                              "What is the Lannister sword name?",
                              "Who was the last Lannister king?"]
    
    var lannisterAnswers = [["Lann", "Lancel I", "Tygrid"],
                            ["Cersei", "Tywin", "Jaime"],
                            ["Casterly Rock", "Dragonstone", "Red Keep"],
                            ["Lion", "Jaguar", "Tiger"],
                            ["Hear me roar!", "Ours is the Fury", "Family,Duty, Honor"],
                            ["Jaime","Tommen", "Myrcella"],
                            ["60,000","100,000","20,000"],
                            ["Tyrion", "Varys", "Lady Olenna"],
                            ["Widow's Wail","Dark Sister", "Dawn"],
                            ["Loren","Tommen", "Tybolt"]]
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "starkSegue" {
            let VC = segue.destination as! NewViewController
            VC.questions = starkQuestions
            VC.answers = starkAnswers
            VC.images = starkImages
            
        }else if segue.identifier == "targSegue" {
            let VC = segue.destination as! NewViewController
            VC.questions = targQuestions
            VC.answers = targAnswers
            VC.images = targImages
            
        }else if segue.identifier == "lannSegue"{
            let VC = segue.destination as! NewViewController
            VC.questions = lannisterQuestions
            VC.answers = lannisterAnswers
            VC.images = lannImages
        }else if segue.identifier == "barSegue" {
            let VC = segue.destination as! NewViewController
            VC.questions = baratheonQuestions
            VC.answers = baratheonAnswers
            VC.images = barImages
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        scoreLabel.text = "\(score)"
        
        backgroundVideo()
        
        
        let defaults = UserDefaults.standard
        
        DispatchQueue.main.async {
            if self.score > self.realhighscore {
                self.realhighscore = self.score
                self.highScore.text = String(format: "%i", self.score)
                defaults.set(self.realhighscore, forKey: "realScore")
                defaults.synchronize()
                
                            }
            
        }
        
        if (defaults.value(forKey: "realScore") != nil) {
            self.realhighscore = defaults.object(forKey: "realScore") as! Int
            
            self.highScore.text = String(format: "%i", self.realhighscore)
            
        }else {
            self.highScore.text = "0"
        }
        
        
        defaults.synchronize()
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func backgroundVideo() {
        let imageData = NSData(contentsOf: Bundle.main.url(forResource: "dragons2", withExtension: "gif")!)
        
        let imageGif = UIImage.gifWithData(imageData! as Data)
        
        let imageView = UIImageView(image: imageGif)
        
        imageView.frame = CGRect(x: 0.0, y: 0.0, width: 475.0, height: 667.0)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        
        imageView.alpha = 0.25
        //imageView.backgroundColor = UIColor.lightGray
        view.addSubview(imageView)
        
        
    }
    
    @IBAction func button1(_ sender: Any) {
        
        UIView.animate(withDuration: 0.1,
                       animations: {
                        self.btn1.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.1)
                        {  self.btn1.transform = CGAffineTransform.identity   }})
    }
    
    @IBAction func button2(_ sender: Any) {
        UIView.animate(withDuration: 0.1,
                       animations: {
                        self.btn2.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.1)
                        {  self.btn2.transform = CGAffineTransform.identity   }})
    }
  
    @IBAction func button3(_ sender: Any) {
        UIView.animate(withDuration: 0.1,
                       animations: {
                        self.btn3.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.1)
                        {  self.btn3.transform = CGAffineTransform.identity   }})
    }
    
    @IBAction func button4(_ sender: Any) {
//        UIView.animate(withDuration: 0.1,
//                       animations: {
//                        self.btn4.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
//        },
//                       completion: { _ in
//                        UIView.animate(withDuration: 0.1)
//                        {  self.btn4.transform = CGAffineTransform.identity   }})
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

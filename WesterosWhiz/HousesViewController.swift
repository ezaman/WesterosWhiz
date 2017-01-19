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
    var highscore = Int()
    var highestscore = 0
    
    var defaults = UserDefaults.standard
    
    
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
                        ["House Bolton", "House Karstark", "House Tyrell"],
                        ["King Jon I", "King Robb I", "Lord Ramsey"],
                        ["Torrhen Stark", "Benjen Stark","Brandon Stark"],
                        ["8,000+ years", "500 years", "40 years"],
                        ["Old Gods of the Forest", "Faith of the Seven", "Drowned Gods"]]
    
    var targQuestions = ["Who is Aegon the Conqueror?",
                         "How many dragons does Daenerys have?",
                         "Who was Aerys II's hand?",
                         "Which of Dany's dragons is the largest?",
                         "What kingdom does Daenerys currently rule?",
                         "How many Targaryens sat on the Iron Throne?",
                         "Who killed Aerys II?",
                         "Who was the longest reigning king?",
                         "Which king was known as 'King Scab'",
                         "Who was heir of Aerys II?"]
    
    var targAnswers = [["First ruler of Westeros", "A Blackfyre?", "Essos King"],
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
                      ["Stag", "Bear", "Horse"],
                      ["Lady Olenna", "Tyrion", "Robb Stark", "Melissandre"],
                      ["300 years old", "3,000 years old", "20 years old"],
                      ["Stormlands","Riverlands","Vale"],
                      ["War hammer", "Valyrian sword", "Ax", "Wildfire"],
                      ["Orys", "Borros", "Robar"]]
    
    var lannisterQuestions = ["Who founded House Lannister?",
                              "Who is the current ruler of House Lannister?",
                              "What is the Lannister ancestral seat?",
                              "What is the Lannister sigil?",
                              "What is the official motto",
                              "Who is the heir of House Lannister",
                              "How large is the Lannister army?",
                              "Who killed Tywin Lannister?",
                              "What is the Lannister sword name?",
                              "Who was the last Lannister king?"]
    
    var lannisterAnswers = [["Lann", "Lancel I", "Tygrid"],
                            ["Cersei I", "Tywin", "Jaime"],
                            ["Casterly Rock", "Dragonstone", "Red Keep"],
                            ["Lion", "Jaguar", "Tiger"],
                            ["Hear me roar!", "Ours is the Fury", "Family,Duty, Honor"],
                            ["Jaime","Tommen", "Mycela"],
                            ["60,000","100,000","20,000"],
                            ["Tyrion", "Varys", "Lady Olenna"],
                            ["Widow's Wail","Dark Sister", "Dawn"],
                            ["Loren","Tommen", "Tybolt"]]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "starkSegue" {
            let VC = segue.destination as! NewViewController
            VC.questions = starkQuestions
            VC.answers = starkAnswers
            
        }else if segue.identifier == "targSegue" {
            let VC = segue.destination as! NewViewController
            VC.questions = targQuestions
            VC.answers = targAnswers
        }else if segue.identifier == "lannSegue"{
            let VC = segue.destination as! NewViewController
            VC.questions = lannisterQuestions
            VC.answers = lannisterAnswers
        }else if segue.identifier == "barSegue" {
            let VC = segue.destination as! NewViewController
            VC.questions = baratheonQuestions
            VC.answers = baratheonAnswers
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (highscore >= highestscore) {

            highestscore = highscore
        
            defaults.set(highestscore, forKey: "HighScore")
        }else {
            highestscore = 0
            highScore.text = "\(highestscore)"
            defaults.set(highestscore, forKey: "HighScore")
        }
        
        let finalHighScore = defaults.string(forKey: "HighScore")
        
        highScore.text = "\(finalHighScore!)"
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    
    
}

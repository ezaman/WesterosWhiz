//
//  ViewController.swift
//  WesterosWhiz
//
//  Created by Ehsan Zaman on 1/7/17.
//  Copyright © 2017 Ehsan Zaman. All rights reserved.
//

import UIKit


class NewViewController: UIViewController {
    

    @IBOutlet weak var questionPic: UIImageView!
    
    //scenario for whenever a button is tapped, ensuring it is not the last. If it is, segue to total score
    @IBAction func buttons(_ sender: UIButton) {
        
        
        if sender.tag == 1 {
            UIView.animate(withDuration: 0.1,
                           animations: {
                            self.btn1.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            },
                           completion: { _ in
                            UIView.animate(withDuration: 0.1)
                            { self.btn1.transform = CGAffineTransform.identity } })
            
        }
        
        if sender.tag == 2 {
            UIView.animate(withDuration: 0.1,
                           animations: {
                            self.btn2.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            },
                           completion: { _ in
                            UIView.animate(withDuration: 0.1)
                            {  self.btn2.transform = CGAffineTransform.identity   }})
            
            
        }
        if sender.tag == 3 {
            UIView.animate(withDuration: 0.1,
                           animations: {
                            self.btn3.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            },
                           completion: { _ in
                            UIView.animate(withDuration: 0.1)
                            { self.btn3.transform = CGAffineTransform.identity } })
           
        }

        
        if sender.tag == Int(answerPlacement) && currentQuestion < 10 {
            
            
            score += 1
            nextQuestion()
            
            DispatchQueue.main.async{
           
          
            }
            
        } else if (sender.tag != Int(answerPlacement)) && currentQuestion < 10 {
            nextQuestion()
            
            DispatchQueue.main.async{
               
                
            }
            
        }else if sender.tag == Int(answerPlacement) && currentQuestion == 10 {
            
            performSegue(withIdentifier: "scoreLabel", sender: self)
        }else if sender.tag != Int(answerPlacement) && currentQuestion == 10{
            performSegue(withIdentifier: "scoreLabel", sender: self)
        }
        
    }
    
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    var questions: [String] = []
    var answers:[[String]] = []
    
    var images = [UIImage]()
    var counter = 0
    
    var currentQuestion = 0
    var answerPlacement:UInt32 = 0
    var score = Int()
    var highscore = Int()
    
    
    override func viewWillAppear(_ animated: Bool) {
        //score = 0
        currentQuestion = 0
        nextQuestion()
        btn1.layer.cornerRadius = 6
        btn2.layer.cornerRadius = 6
        btn3.layer.cornerRadius = 6
        
        
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //questionPic.image = #imageLiteral(resourceName: "winterfellcastle.jpg")
        
    }
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "scoreLabel" {
            let VC = segue.destination as! ScoreViewController
            
            VC.finalScore = "\(score + 1) / \(questions.count)"
            VC.score = score + 1
            
        }
    }
    
    //function to move to the next question
    func nextQuestion() {
        
        
        self.QuestionLabel.text = self.questions[self.currentQuestion]
        
        self.questionPic.image = self.images[self.currentQuestion]
        
        self.answerPlacement = arc4random_uniform(3) + 1
        var button: UIButton = UIButton()
        var x = 1
        for i in 1...3
        {
            
            button = self.view.viewWithTag(i) as! UIButton
            
            if (i == Int(self.answerPlacement)) {
                button.setTitle(self.answers[self.currentQuestion][0], for: .normal)
            }else {
                button.setTitle(self.answers[self.currentQuestion][x], for: .normal)
                x = 2
            }
            
        }
        currentQuestion += 1
        
    }
    
}





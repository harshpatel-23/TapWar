//
//  ViewController.swift
//  TapWar
//
//  Created by harsh patel on 23/11/16.
//  Copyright © 2016 harsh patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var topBtn: UIButton!
    
    @IBOutlet var buttomBtn: UIButton!
    
    @IBOutlet var endButton: UIButton!
    
    
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var topEndLabel: UILabel!
    
    @IBOutlet var bottomEndLabel: UILabel!
    
    @IBAction func blueBtnAction(sender: AnyObject) {
        score++  //Increment score value per click.
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
        
        testScore() //Check if the score is 10 or -10.
    }
    
    @IBAction func yellowBtnAction(sender: AnyObject) {
        score--  //Decrement score value per click.
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
        
        testScore() //Check if the score is 10 or -10.
    }
    
    @IBAction func endButtonAction(sender: AnyObject) {
        endButton.hidden = true
        topEndLabel.hidden = true
        bottomEndLabel.hidden = true
        
        score = 0
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
    }
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
        
        //Rotate the blue label to user facing
        blueLabel.transform = CGAffineTransformMakeRotation(3.14)
        
        topEndLabel.transform = CGAffineTransformMakeRotation(3.14)
        
        //Hide the result(end) screen button and labels.
        endButton.hidden = true
        topEndLabel.hidden = true
        bottomEndLabel.hidden = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func testScore() {
        
        //Condition to end game.
        if score >= 10 {
            
            //Enable Ending Screen button and labels.
            endButton.hidden = false
            topEndLabel.hidden = false
            bottomEndLabel.hidden = false
            
            topEndLabel.text = "Winner"
            bottomEndLabel.text = "Loser"
            
        } else if score <= -10 {
            
            //Enable Ending Screen button and labels.
            endButton.hidden = false
            topEndLabel.hidden = false
            bottomEndLabel.hidden = false
            
            topEndLabel.text = "Loser"
            bottomEndLabel.text = "Winner"
        }
    }

}













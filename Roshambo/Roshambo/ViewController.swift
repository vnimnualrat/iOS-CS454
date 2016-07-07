//
//  ViewController.swift
//  Roshambo
//
//  Created by Nimnualrat, Varunya on 6/30/16.
//  Copyright (c) 2016 Nimnualrat, Varunya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Code only
    @IBAction func rockPressed(){
        var controller:ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
        controller.playerChoice = "rock"
        controller.opponentChoice = randomChoice()
        
        self.presentViewController(controller, animated: true, completion: nil)
    }

    // Code and storyboard
    @IBAction func paperPressed(){
        performSegueWithIdentifier("paper", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if(segue.identifier == "paper"){
            let controller = segue.destinationViewController as! ResultsViewController
            
            controller.playerChoice = "paper"
            controller.opponentChoice = randomChoice()
        }
        else if(segue.identifier == "scissors"){
            let controller = segue.destinationViewController as! ResultsViewController
            
            controller.playerChoice = "scissors"
            controller.opponentChoice = randomChoice()        }
        
    }
    

    // Return random pick
    func randomChoice() -> String {
        var stringChoice: String!
        let randomChoice = 1 + arc4random() % 3
        
        if(randomChoice == 1){
            stringChoice = "rock"
        }
        else if(randomChoice == 2){
            stringChoice = "paper"
        }
        else if(randomChoice == 3){
            stringChoice = "scissors"
        }
        
        return stringChoice
    }
}


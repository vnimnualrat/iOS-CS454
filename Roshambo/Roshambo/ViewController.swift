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
    
    var history = [MatchResult]()
    
    // Code only
    @IBAction func rockPressed(){
        var controller:ResultsViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        var opp = randomChoice()
        
        controller.playerChoice = "rock"
        controller.opponentChoice = opp
        
        let match = MatchResult(player: "rock", opponent: opp)
        
        history.append(match)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }

    // Code and storyboard
    @IBAction func paperPressed(){
        performSegueWithIdentifier("paper", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        var opp = randomChoice()
        
        if(segue.identifier == "paper"){
            let controller = segue.destinationViewController as! ResultsViewController
            
            controller.playerChoice = "paper"
            controller.opponentChoice = opp
            
            let match = MatchResult(player: "paper", opponent: opp)
            
            history.append(match)        }
        else if(segue.identifier == "scissors"){
            let controller = segue.destinationViewController as! ResultsViewController
            
            controller.playerChoice = "scissors"
            controller.opponentChoice = opp
            
            let match = MatchResult(player: "scissors", opponent: opp)
            
            history.append(match)
            
        }
        
        
    }
    
    @IBAction func historyButtonPressed(){
        var controller:HistoryViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("HistoryViewController") as! HistoryViewController
        controller.gameHistory = self.history
        self.presentViewController(controller, animated: true, completion: nil)
    
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


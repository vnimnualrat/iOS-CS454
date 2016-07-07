//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Nimnualrat, Varunya on 6/30/16.
//  Copyright (c) 2016 Nimnualrat, Varunya. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController{
    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var resultsImage: UIImageView!
    
    
    var playerChoice: String?
    var opponentChoice: String?
    
    override func viewDidAppear(animated: Bool) {
        if(playerChoice == "rock"){
            if(opponentChoice == "rock"){
                self.resultsImage.image = UIImage(named: "itsATie")
                resultsLabel.text = "Both chose rock. It is a tie."
            }
            else if(opponentChoice == "paper"){
                self.resultsImage.image = UIImage(named: "PaperCoversRock")
                resultsLabel.text = "Paper covers Rock. You lose."
            }
            else if(opponentChoice == "scissors"){
                self.resultsImage.image = UIImage(named: "RockCrushesScissors")
                resultsLabel.text = "Rock crushes Scissors. You win."
            }
        }
        
        if(playerChoice == "paper"){
            if(opponentChoice == "rock"){
                self.resultsImage.image = UIImage(named: "PaperCoversRock")
                resultsLabel.text = "Paper covers Rock. You win."
            }
            else if(opponentChoice == "paper"){
                self.resultsImage.image = UIImage(named: "itsATie")
                resultsLabel.text = "Both chose paper. It is a tie."
            }
            else if(opponentChoice == "scissors"){
                self.resultsImage.image = UIImage(named: "ScissorsCutPaper")
                resultsLabel.text = "Scissors cut Paper. You lose."
            }
        }
        
        if(playerChoice == "scissors"){
            if(opponentChoice == "rock"){
                self.resultsImage.image = UIImage(named: "RockCrushesScissors")
                resultsLabel.text = "Rock crushes Scissors. You lose."
            }
            else if(opponentChoice == "paper"){
                self.resultsImage.image = UIImage(named: "ScissorsCutPaper")
                resultsLabel.text = "Scissors cut paper. You win."
            }
            else if(opponentChoice == "scissors"){
                self.resultsImage.image = UIImage(named: "itsATie")
                resultsLabel.text = "Both chose scissors. It is a tie."
            }
        }
        
        
    }
    
    @IBAction func playAgain(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

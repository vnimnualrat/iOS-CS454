//
//  HistoryViewController.swift
//  Roshambo
//
//  Created by Nimnualrat, Varunya on 7/8/16.
//  Copyright © 2016 Nimnualrat, Varunya. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



    @IBOutlet weak var tableView: UITableView!
   
    var gameHistory = [MatchResult]()
    
    override func viewDidLoad(){
    super.viewDidLoad()
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return gameHistory.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let CellID = "cell"
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath: indexPath)
        
        let match = self.gameHistory[indexPath.row]
        
        cell.textLabel!.text = returnWinHistory(match)
        cell.detailTextLabel!.text = "\(match.player) vs. \(match.opponent)"

        return cell
    }
    
    func returnWinHistory(result: MatchResult) -> String {
        var condition: String!
        if(result.player == result.opponent){
            condition = "Tie"
        } else if(result.player == "rock" && result.opponent == "paper"){
            condition = "Loss"
        } else if(result.player == "rock" && result.opponent == "scissors"){
            condition = "Win"
        } else if (result.player == "paper" && result.opponent == "rock"){
            condition = "Loss"
        } else if (result.player == "paper" && result.opponent == "scissors"){
            condition = "Win"
        } else if (result.player == "scissors" && result.opponent == "rock"){
            condition = "Loss"
        } else if (result.player == "scissors" && result.opponent == "paper"){
            condition = "Win"
        }
        return condition
        
    }
}



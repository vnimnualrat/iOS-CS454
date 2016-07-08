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
    var items: [String] = ["We", "Hi", "Rawr"]
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        //return gameHistory.count
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let CellID = "cell"
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath: indexPath)
        
        //let match = self.gameHistory[indexPath.row]
        
        //cell.textLabel!.text = "work"//returnWinHistory(match)
        //cell.detailTextLabel!.text = "wtf"//"\(match.player) vs. \(match.opponent)"
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func returnWinHistory(result: MatchResult) -> String {
        return result.results
    }


}
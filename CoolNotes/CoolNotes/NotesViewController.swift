//
//  NotesViewController.swift
//  CoolNotes
//
//  Created by Nimnualrat, Varunya on 7/15/16.
//  Copyright © 2016 Nimnualrat, Varunya. All rights reserved.
//

import UIKit

class NotesViewController: CoreDataTableViewController {
    
    var notebook : Notebook?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:  - TableView Data Source
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Get the note
        let note = fetchedResultsController?.objectAtIndexPath(indexPath) as! Note
        
        // Get the cell
        let cell = tableView.dequeueReusableCellWithIdentifier("Note", forIndexPath: indexPath)
        
        // Sync note -> cell
        cell.textLabel?.text = note.text
        
        // Return the cell
        return cell
    }
    
    override func tableView(tableView: UITableView,
                            commitEditingStyle editingStyle: UITableViewCellEditingStyle,
                                               forRowAtIndexPath indexPath: NSIndexPath) {
        
        
        if let context = fetchedResultsController?.managedObjectContext,
            note = fetchedResultsController?.objectAtIndexPath(indexPath) as? Note
            where editingStyle == .Delete{
            
            context.deleteObject(note)
            
        }
    }
    
    
    
    @IBAction func addNewNote(sender: AnyObject) {
        
        if let nb = notebook, context = fetchedResultsController?.managedObjectContext{
            
            // Just create a new note and you're done!
            let note = Note(text: "New Note", context: context)
            note.notebook = nb
            
        }
        
        
    }
    
    
    // MARK:  - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "displayNote" {
            
            
            // Get the note
            // Get the detailVC
            
            if let ip = tableView.indexPathForSelectedRow,
                note = fetchedResultsController?.objectAtIndexPath(ip) as? Note,
                vc = segue.destinationViewController as? NoteViewController{
                
                // Inject the note in the the detailVC
                vc.model = note
                
            }
            
        }
    }
}

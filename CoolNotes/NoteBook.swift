//
//  NoteBook.swift
//  CoolNotes
//
//  Created by Nimnualrat, Varunya on 7/14/16.
//  Copyright © 2016 Nimnualrat, Varunya. All rights reserved.
//

import Foundation
import CoreData

@objc(NoteBook)
class Notebook: NSManagedObject {
    
    convenience init(name: String, context: NSManagedObjectContext){
        

        if let ent = NSEntityDescription.entityForName("Notebook",
                                                       inManagedObjectContext: context){
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            self.name = name;
            self.creationDate = NSDate()
        }else{
            fatalError("Unable to find Entity name!")
        }
        
        
        
    }
    
}

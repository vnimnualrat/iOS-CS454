//
//  NoteBook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by Nimnualrat, Varunya on 7/14/16.
//  Copyright © 2016 Nimnualrat, Varunya. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension NoteBook {

    @NSManaged var creationName: NSDate?
    @NSManaged var name: String?
    @NSManaged var notes: Note?

}

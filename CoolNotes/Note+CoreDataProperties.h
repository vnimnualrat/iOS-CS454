//
//  Note+CoreDataProperties.h
//  CoolNotes
//
//  Created by Nimnualrat, Varunya on 7/14/16.
//  Copyright © 2016 Nimnualrat, Varunya. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Note.h"

NS_ASSUME_NONNULL_BEGIN

@interface Note (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *creationDate;
@property (nullable, nonatomic, retain) NSDate *text;
@property (nullable, nonatomic, retain) NoteBook *notebook;

@end

NS_ASSUME_NONNULL_END

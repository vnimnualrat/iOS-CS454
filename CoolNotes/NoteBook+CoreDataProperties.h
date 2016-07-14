//
//  NoteBook+CoreDataProperties.h
//  CoolNotes
//
//  Created by Nimnualrat, Varunya on 7/14/16.
//  Copyright © 2016 Nimnualrat, Varunya. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "NoteBook.h"

NS_ASSUME_NONNULL_BEGIN

@interface NoteBook (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *creationName;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSManagedObject *notes;

@end

NS_ASSUME_NONNULL_END

//
//  ConfSingleton.h
//  ODUrlCache
//
//  Created by Olivier Demolliens on 11/05/13.
//  Copyright (c) 2013 Olivier Demolliens. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSSingleton.h"

@interface ODCDManager : NSSingleton
{
    
}

@property (readonly, retain, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, retain, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, retain, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+(ODCDManager *)shared;
-(void)saveContext;

@end

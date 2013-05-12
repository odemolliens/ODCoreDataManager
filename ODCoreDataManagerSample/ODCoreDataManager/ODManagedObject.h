//
//  ODManagedObject.h
//  ODUrlCache
//
//  Created by Olivier Demolliens on 11/05/13.
//  Copyright (c) 2013 Olivier Demolliens. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface ODManagedObject : NSManagedObject
{
    
}

//Init
+(id)init;

//EntityDescription
+(NSEntityDescription*)getEntityDescriptionObject;

//Fetch
+(NSArray*)fetch;
+(NSArray*)fetchWithPredicate:(NSPredicate*)predicate;

+(NSArray*)fetchWithSort:(NSSortDescriptor*)sort;
+(NSArray*)fetchWithSortList:(NSArray*)sortList;

+(NSArray*)fetchWithSort:(NSSortDescriptor*)sort andPredicate:(NSPredicate*)predicate;
+(NSArray*)fetchWithSortList:(NSArray*)sortList andPredicate:(NSPredicate*)predicate;

@end

//
//  ODManagedObject.m
//  ODUrlCache
//
//  Created by Olivier Demolliens on 11/05/13.
//  Copyright (c) 2013 Olivier Demolliens. All rights reserved.
//

#import "ODManagedObject.h"
#import "ODCDManager.h"

@implementation ODManagedObject



#pragma mark Init

+(id)init
{
    return [[[self alloc] initWithEntity:[self getEntityDescriptionObject] insertIntoManagedObjectContext:[[ODCDManager shared] managedObjectContext]] autorelease];
}

#pragma mark Entity

+(NSEntityDescription*)getEntityDescriptionObject
{
    return [NSEntityDescription entityForName:[NSString stringWithFormat:@"%@",[self class]] inManagedObjectContext:[[ODCDManager shared] managedObjectContext]];
}

#pragma mark Fetch methods

+(NSArray*)fetch
{
    NSFetchRequest *request = [[[NSFetchRequest alloc] init]autorelease];
    
    [request setEntity:[self getEntityDescriptionObject]];
    
    NSError *error;
    
    NSArray *array = [[[ODCDManager shared] managedObjectContext] executeFetchRequest:request error:&error];
    
    if (array == nil){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }else{
        return array;
    }
}

+(NSArray*)fetchWithPredicate:(NSPredicate*)predicate
{
    NSFetchRequest *request = [[[NSFetchRequest alloc] init]autorelease];
    
    [request setEntity:[self getEntityDescriptionObject]];
    
    [request setPredicate:predicate];
    
    NSError *error;
    
    NSArray *array = [[[ODCDManager shared] managedObjectContext] executeFetchRequest:request error:&error];
    
    if (array == nil){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }else{
        return array;
    }
}

+(NSArray*)fetchWithSort:(NSSortDescriptor*)sort
{
    NSFetchRequest *request = [[[NSFetchRequest alloc] init]autorelease];
    
    [request setEntity:[self getEntityDescriptionObject]];
    
    [request setSortDescriptors:[NSArray arrayWithObject:sort]];
    
    NSError *error;
    
    NSArray *array = [[[ODCDManager shared] managedObjectContext] executeFetchRequest:request error:&error];
    
    if (array == nil){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }else{
        return array;
    }
}

+(NSArray*)fetchWithSortList:(NSArray*)sortList
{
    NSFetchRequest *request = [[[NSFetchRequest alloc] init]autorelease];
    
    [request setEntity:[self getEntityDescriptionObject]];
    
    [request setSortDescriptors:sortList];
    
    NSError *error;
    
    NSArray *array = [[[ODCDManager shared] managedObjectContext] executeFetchRequest:request error:&error];
    
    if (array == nil){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }else{
        return array;
    }
}

+(NSArray*)fetchWithSort:(NSSortDescriptor*)sort andPredicate:(NSPredicate*)predicate
{
    NSFetchRequest *request = [[[NSFetchRequest alloc] init]autorelease];
    
    [request setEntity:[self getEntityDescriptionObject]];
    
    [request setPredicate:predicate];
    
    [request setSortDescriptors:[NSArray arrayWithObject:sort]];
    
    NSError *error;
    
    NSArray *array = [[[ODCDManager shared] managedObjectContext] executeFetchRequest:request error:&error];
    
    if (array == nil){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }else{
        return array;
    }
}

+(NSArray*)fetchWithSortList:(NSArray*)sortList andPredicate:(NSPredicate*)predicate
{
    NSFetchRequest *request = [[[NSFetchRequest alloc] init]autorelease];
    
    [request setEntity:[self getEntityDescriptionObject]];
    
    [request setPredicate:predicate];
    
    [request setSortDescriptors:sortList];
    
    NSError *error;
    
    NSArray *array = [[[ODCDManager shared] managedObjectContext] executeFetchRequest:request error:&error];
    
    if (array == nil){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }else{
        return array;
    }
}

@end

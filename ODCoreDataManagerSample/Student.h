//
//  Student.h
//  ODCoreDataManagerSample+Library
//
//  Created by Olivier Demolliens on 11/05/13.
//  Copyright (c) 2013 Olivier Demolliens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

//CoreDataHelper
#import "ODManagedObject.h"

@interface Student : ODManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;

@end

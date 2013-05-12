//
//  ODViewController.m
//  ODCoreDataManagerSample
//
//  Created by Olivier Demolliens on 12/05/13.
//  Copyright (c) 2013 Olivier Demolliens. All rights reserved.
//

#import "ODViewController.h"


//CoreDataManager
#import "ODCDManager.h"

//Sample
#import "Student.h"


@interface ODViewController ()

@end

@implementation ODViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    Student *aStudent = [Student init];
    [aStudent setFirstName:@"FirstName"];
    [aStudent setLastName:@"LastName"];
    
    Student *aStudent1 = [Student init];
    [aStudent1 setFirstName:@"FirstName1"];
    [aStudent1 setLastName:@"LastName2"];
    
    [[ODCDManager shared]saveContext];
    
    NSArray *studentList = [Student fetch];
    
    NSLog(@"%@",studentList);
    
    //Other methods
    //[Student  fetchWithPredicate:...];
    //[Student fetchWithSort:...];
    //[Student fetchWithSort:... andPredicate:...];
    //...
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

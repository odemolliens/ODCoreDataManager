//
//  ODAppDelegate.h
//  ODCoreDataManagerSample
//
//  Created by Olivier Demolliens on 12/05/13.
//  Copyright (c) 2013 Olivier Demolliens. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ODViewController;

@interface ODAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ODViewController *viewController;

@end

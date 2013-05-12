//
//  NSSingleton.h
//  __MyCompanyName__
//
//  Created by Olivier Demolliens on 19/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/NSObject.h>

@interface NSSingleton : NSObject {
}

+(void)cleanup;
// . [NSSingleton cleanup]  : Free all singletons.
// . [MySingleton cleanup] : Free MySingleton.

+(id)sharedInstance;
// Notes :
// . +(id)sharedInstance can be overridden to return the right type..
//   ex : (MySingleton *)sharedInstance { return [super sharedInstance]; }
// . Singleton initialization must be done as usual in -(id)init.
//
@end
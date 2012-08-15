//
//  YelpCloneViewController.h
//  YelpClone
//
//  Created by Laura on 8/14/12.
//  Copyright (c) 2012 Laura's Empire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restkit.h"

@interface YelpCloneViewController : UIViewController

//Here's a method we have. If you're a user (class or person interacting with the program-- can use this).
- (void)searchResults;
- (IBAction)searchButton:(UIButton *)sender;

@property NSString* latitudeOfDevice;
@property NSString* longitudeOfDevice;
@end

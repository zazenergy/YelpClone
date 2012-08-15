//
//  YelpCloneViewController.m
//  YelpClone
//
//  Created by Laura on 8/14/12.
//  Copyright (c) 2012 Laura's Empire. All rights reserved.
//

#import "YelpCloneViewController.h"
#import "RestKit.h"
#import <CoreLocation/CoreLocation.h>

//Put RKRequestDelegate in .m because we want it to be private.
@interface YelpCloneViewController () <RKRequestDelegate, CLLocationManagerDelegate >

{
    CLLocationManager *locationManager;
    
}

-(NSString *)deviceLocation {
    
}

//-(void)findLocation;
//-(void)foundLocation:(CLLocation *)loc;

@end

@implementation YelpCloneViewController


@synthesize latitudeOfDevice;
@synthesize longitudeOfDevice;

- (void)viewDidLoad
{   //Call viewDidLoad on superclass (prob NSObject). Overriding view did load. Want to add to view did load.
    //[super viewDidLoad];
	
    [RKClient clientWithBaseURLString:@"https://maps.googleapis.com/maps/api/place/search/json"];
    //Calling our search results method in viewDidLoad temporarily, since we haven't created any views as of now.
}


- (void)searchResults
{   //shared client is a class method, class name is RKClient
    RKClient* client = [RKClient sharedClient];
    NSDictionary* params =[NSDictionary dictionaryWithKeysAndObjects:@"keyword", @"ice cream", @"location", @"37.7750,-122.4183", @"rankby", @"distance", @"sensor", @"false",@"key", @"AIzaSyC88DHcZB_QEj8CD9stjdnKBm_g_jAwWow", nil];
    [client get:@"" queryParameters:params delegate:self];   
}

- (IBAction)searchButton:(UIButton *)sender {
    [self searchResults];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {
    NSLog(@"%@", [request.response parsedBody:nil]);
}

@end

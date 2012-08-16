//
//  SimpleAnnotation.h
//  YelpClone
//
//  Created by Laura on 8/15/12.
//  Copyright (c) 2012 Laura's Empire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface SimpleAnnotation : NSObject <MKAnnotation>
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (copy, nonatomic) NSString* title;

@end

//
//  BNRMapPoint.m
//  Whereami2
//
//  Created by Sara Duckler on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

// These two properties are part of the MKAnnotation protocol
@synthesize coordinate;
@synthesize title;

- (id)init
{
	CLLocationCoordinate2D defaultLocation = CLLocationCoordinate2DMake(38, 120);
	self = [self initWithCoordinate:defaultLocation title:@"Hometown"];
	return self;
}

/*
 * The designated initializer
 */
- (id)initWithCoordinate:(CLLocationCoordinate2D)location title:(NSString *)theTitle
{
	self = [super init];
	if (self) {
		coordinate = location;
		title = theTitle;
	}
	return self;
}

@end

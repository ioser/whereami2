//
//  BNRMapPoint.h
//  Whereami2
//
//  Created by Sara Duckler on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject<MKAnnotation>
{
	//empty
}
// Designated initializer for instances of BNRMapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)location title:(NSString *)theTitle;

// A required property from the MKAnnotation protocol
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// An optional property from the MKAnnotation protocol
@property (nonatomic, copy) NSString *title;

@end

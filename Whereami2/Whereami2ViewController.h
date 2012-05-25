//
//  Whereami2ViewController.h
//  Whereami2
//
//  Created by Sara Duckler on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface Whereami2ViewController : UIViewController<CLLocationManagerDelegate, MKMapViewDelegate>
{
	CLLocationManager *locationManager;
	IBOutlet MKMapView *worldView;
	IBOutlet UIActivityIndicatorView *activityIndicator;
	IBOutlet UITextField *locationTitleField;
}

//- (void)doSomethingWeird;

@end

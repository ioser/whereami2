//
//  Whereami2ViewController.m
//  Whereami2
//
//  Created by Sara Duckler on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Whereami2ViewController.h"

@interface Whereami2ViewController ()

@end

@implementation Whereami2ViewController

- (void)doSomethingWeird
{
    NSLog(@"Run over a pink mouse.");
    NSLog(@"Eat green bean jelly.");
    NSLog(@"Make a popcorn pie.");
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	
	if (self) {
		// Create a LocationManager instance
		locationManager = [[CLLocationManager alloc] init];
        // Do something weird
        [self doSomethingWeird];
        
		[locationManager setDelegate:self];
		[locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
		//[locationManager startUpdatingLocation];
	}
	
	return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation 
		   fromLocation:(CLLocation *)oldLocation
{
	NSLog(@"New location is: %@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager
	   didFailWithError:(NSError *)error
{
	NSLog(@"Could not find location: %@", error);
}

- (void)dealloc
{
	[locationManager setDelegate:nil];
}

//
// Existing template code

//
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[worldView setShowsUserLocation:YES];
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

//
// MKMapViewDelegate methods
//

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
	CLLocationCoordinate2D location = [userLocation coordinate];
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 250, 250);
	[worldView setRegion:region animated:YES];
}

@end

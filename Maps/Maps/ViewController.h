//
//  ViewController.h
//  Maps
//
//  Created by Ankita on 5/12/16.
//  Copyright © 2016 Ankita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate , MKMapViewDelegate>

@property (nonatomic , strong) CLLocationManager *manager;


@end


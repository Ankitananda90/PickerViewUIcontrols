//
//  ViewController.m
//  Maps
//
//  Created by Ankita on 5/12/16.
//  Copyright © 2016 Ankita. All rights reserved.
//

#import "ViewController.h"
#import "myMapAnnotation.h"
#import "myCustomAnnView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet MKMapView *mapview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.manager = [[CLLocationManager alloc]init];
    self.manager.delegate = self;
    if ([self.manager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.manager requestWhenInUseAuthorization];
    }
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = 42.5583333;
    coordinate.longitude = -71.2694444;
    
    
//
//    MKCoordinateSpan span;
//    span.latitudeDelta = 0.01;
//    span.longitudeDelta = 0.01;
//    
//    MKCoordinateRegion region;
//    region.center = coordinate;
//    region.span = span;
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate , MKCoordinateSpanMake(0.02, 0.02));
     [self.mapview setRegion:region];
    
    myMapAnnotation *ann = [[myMapAnnotation alloc]init];
    ann.coordinate = coordinate;
    ann.title = @"I am here";
    ann.subtitle = @"Hey der";
    ann.IsItWatch = NO;
    [self.mapview addAnnotation:ann];
    
    CLLocationCoordinate2D coordinate2;
    coordinate2.latitude = 42.5533;
    coordinate2.longitude = -71.2644;

   
    myMapAnnotation *ann2 = [[myMapAnnotation alloc]init];
    ann2.coordinate = coordinate2;
    ann2.title = @"come here";
    ann2.subtitle = @"Hey go";
    ann2.IsItWatch = "Yes";
    
    [self.mapview addAnnotation:ann2];

}


- (nullable MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{

     myCustomAnnView *view = [mapView dequeueReusableAnnotationViewWithIdentifier:@"pinView"];
    if (view== nil)
           {
               
        view = [[myCustomAnnView alloc] initWithAnnotation: annotation reuseIdentifier:@"pinView"];
           }
    
//   MKPinAnnotationView *view = (MKAnnotationView*)[_mapview dequeueReusableAnnotationViewWithIdentifier:@"pin view"];
//    if (view== nil)
//    {
//        view = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin view"];
//    }
//    view.pinTintColor = [UIColor blueColor];
   return view;
               
           }


- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    NSLog(@"tapped");
}


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation

{
//    NSLog(@"%f",userLocation.location.coordinate.latitude);
//    [mapView setRegion:MKCoordinateRegionMake(userLocation.location.coordinate, MKCoordinateSpanMake(0.02, 0.02))];
}
- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
 if (status == kCLAuthorizationStatusAuthorizedWhenInUse) {
    NSLog(@"Authorized");
}

}



    // Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

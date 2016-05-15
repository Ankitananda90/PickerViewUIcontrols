//
//  myMapAnnotation.h
//  Maps
//
//  Created by Ankita on 5/13/16.
//  Copyright © 2016 Ankita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface myMapAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;


@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic ,assign) BOOL IsItWatch;


@end

//
//  myCustomAnnView.m
//  Maps
//
//  Created by Ankita on 5/13/16.
//  Copyright © 2016 Ankita. All rights reserved.
//

#import "myCustomAnnView.h"
#import "myMapAnnotation.h"

@implementation myCustomAnnView

- (instancetype)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super init];
    if (self) {
        myMapAnnotation *ann = (myMapAnnotation*) annotation;
        if (ann.IsItWatch)
        {
            
            self.image = [UIImage imageNamed:@"facebook.png"];
           self.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebook.png"]];
        }
        else{
            
            self.image = [UIImage imageNamed:@"watch-32.png"];
            self.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"watch-32.png"]];
        }
        
        
        
        
        
        //self.image = [UIImage imageNamed:@"facebook.png"];
        self.enabled = YES;
        self.canShowCallout = YES;
        self.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//        self.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebook.png"]];
    }
    return self;
}



@end

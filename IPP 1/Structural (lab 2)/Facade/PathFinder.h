//
//  PathFinder.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathFinder : NSObject

- (void)findCurrentLocation;
- (void)findLocationToTravel:(NSString *) location;
- (void)makeARoute;

@end

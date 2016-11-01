//
//  Engine.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", self.cylinderType, self.fuelType];
}

@end

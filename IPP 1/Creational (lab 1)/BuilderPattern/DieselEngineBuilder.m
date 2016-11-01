//
//  DieselEngineBuilder.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "DieselEngineBuilder.h"

@implementation DieselEngineBuilder

- (void)setFuelType {
    
    self.carEngine.fuelType = @"Diesel";
}

- (void)setCylinderType {
    
    self.carEngine.cylinderType = @"V8";
}

@end

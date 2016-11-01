//
//  PetrolEngineBuilder.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "PetrolEngineBuilder.h"

@implementation PetrolEngineBuilder

- (void)setFuelType {
    
    self.carEngine.fuelType = @"Petrol";
}

- (void)setCylinderType {
    
    self.carEngine.cylinderType = @"V6";
}

@end

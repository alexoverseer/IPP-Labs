//
//  EngineCustomer.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "EngineCustomer.h"

@implementation EngineCustomer

- (void)setBulider:(EngineBuilder *)aBuilder {
    
    self.engineBuilder = aBuilder;
}

- (Engine *)getEngine {
    
    return self.engineBuilder.getEngine;
}

- (void)constructEngine {
    
    [self.engineBuilder setFuelType];
    [self.engineBuilder setCylinderType];
}

@end

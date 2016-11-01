//
//  EngineBuilder.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"

@interface EngineBuilder : NSObject

@property (nonatomic, strong) Engine *carEngine;

- (void)setFuelType;
- (void)setCylinderType;
- (Engine *)getEngine;

@end

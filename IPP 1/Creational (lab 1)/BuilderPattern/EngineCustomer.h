//
//  EngineCustomer.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EngineBuilder.h"
#import "Engine.h"

@interface EngineCustomer : NSObject

@property (nonatomic, strong) EngineBuilder *engineBuilder;

- (void)setBulider:(EngineBuilder *)aBuilder;
- (Engine *)getEngine;
- (void)constructEngine;

@end

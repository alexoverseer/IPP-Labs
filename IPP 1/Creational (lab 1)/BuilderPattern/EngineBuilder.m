//
//  EngineBuilder.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "EngineBuilder.h"

@implementation EngineBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.carEngine = [[Engine alloc] init];
    }
    return self;
}

- (Engine *)getEngine {
    
    return self.carEngine;
}
@end

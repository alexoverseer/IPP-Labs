//
//  RussiaCarBody.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "RussiaCarBody.h"

@implementation RussiaCarBody

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.bodyMetalType = @"Aluminium";
        self.bodyWeight = @"800 Kg";
    }
    return self;
}

@end

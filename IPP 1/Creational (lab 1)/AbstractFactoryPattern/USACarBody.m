//
//  USACarBody.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "USACarBody.h"

@implementation USACarBody

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.bodyMetalType = @"Stainless Steel";
        self.bodyWeight = @"1231 Kg";
    }
    return self;
}

@end

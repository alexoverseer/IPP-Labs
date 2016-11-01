//
//  PremiumCarBody.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "PremiumCarBody.h"

@implementation PremiumCarBody

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", self.bodyMetalType, self.bodyWeight];
}

@end

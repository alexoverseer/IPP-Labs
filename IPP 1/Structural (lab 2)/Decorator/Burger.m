//
//  Burger.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Burger.h"

#define burgerPrice 120.0

@implementation Burger

- (NSString *)getDescription {
    
    return @"Burger";
}

- (double)getPrice {
    
    return burgerPrice;
}

@end

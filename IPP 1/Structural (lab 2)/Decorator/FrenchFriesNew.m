//
//  FrenchFriesNew.m
//  IPP 1
//
//  Created by Ana Rotari on 12/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "FrenchFriesNew.h"

#define frenchFriesPries 20

@interface FrenchFriesNew () {
    
    Burger *burger;
}

@end

@implementation FrenchFriesNew

@synthesize burger;

- (id)initWithBurger:(Burger *)theBurger
{
    self=[super init];
    if (self)
    {
        self.burger=theBurger;
    }
    return self;
}

- (NSString *)getDescription {
    
    return [NSString stringWithFormat:@"%@, frenc fries",self.burger.getDescription];
}

- (double)getPrice {
    
    return self.burger.getPrice+frenchFriesPries;
}

@end

//
//  CheeseNew.m
//  IPP 1
//
//  Created by Ana Rotari on 12/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CheeseNew.h"

#define cheesePrice 30.0

@interface CheeseNew () {
    
    Burger *burger;
}

@end

@implementation CheeseNew

@synthesize burger;

-(id)initWithBurger:(Burger *)theBurger
{
    self = [super init];
    if (self)
    {
        self.burger=theBurger;
    }
    return self;
}

-(NSString *)getDescription
{
    return [NSString stringWithFormat:@"%@ ,cheese",self.burger.getDescription];
}

-(double)getPrice
{
    return self.burger.getPrice + cheesePrice;
}

@end

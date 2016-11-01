//
//  SoftDrinksNew.m
//  IPP 1
//
//  Created by Ana Rotari on 12/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "SoftDrinksNew.h"

#define softDrinksPrice 50

@interface SoftDrinksNew () {
    
    Burger *burger;
}

@end

@implementation SoftDrinksNew

@synthesize burger;

-(id)initWithBurger:(Burger *)theBurger
{
    self=[super init];
    if (self)
    {
        self.burger = theBurger;
    }
    return self;
}

-(NSString *)getDescription {
    
    return [NSString stringWithFormat:@"%@, soft drinks",self.burger.getDescription];
}

-(double)getPrice {
    
    return self.burger.getPrice+softDrinksPrice;
}

@end

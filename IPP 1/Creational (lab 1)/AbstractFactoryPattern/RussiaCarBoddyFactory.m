//
//  RussiaCarBoddyFactory.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "RussiaCarBoddyFactory.h"
#import "RussiaCarBody.h"
#import "RussiaSalonType.h"

@implementation RussiaCarBoddyFactory

- (PremiumCarBody *)getCarBody {
    
    RussiaCarBody *russiaCarBody = [[RussiaCarBody alloc] init];
    return russiaCarBody;
}

- (SalonType *)getSalon {
    
    RussiaSalonType *russiaSalonType = [[RussiaSalonType alloc] init];
    return russiaSalonType;
}

@end

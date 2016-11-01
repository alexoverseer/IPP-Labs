//
//  USACarBodyFactory.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "USACarBodyFactory.h"
#import "USACarBody.h"
#import "SalonType.h"
#import "USASalonType.h"

@implementation USACarBodyFactory

- (PremiumCarBody *)getCarBody {
    
    USACarBody *usaCarBody = [[USACarBody alloc] init];
    return usaCarBody;
}

- (SalonType *)getSalon {
    
    USASalonType *usaSalonType = [[USASalonType alloc] init];
    return usaSalonType;
}

@end

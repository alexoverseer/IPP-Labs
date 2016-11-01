//
//  CarBodyFactory.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PremiumCarBody.h"
#import "SalonType.h"

@interface CarBodyFactory : NSObject

- (PremiumCarBody *)getCarBody;
- (SalonType *)getSalon;

@end

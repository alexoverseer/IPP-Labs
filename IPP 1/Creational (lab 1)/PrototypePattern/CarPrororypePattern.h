//
//  CarPrororypePattern.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Passanger.h"
#import "Engine.h"
#import "PremiumCarBody.h"
#import "PrototypePattern.h"
#import "SalonType.h"

@interface CarPrororypePattern : NSObject <PrototypePattern>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *color;
@property (strong, nonatomic) NSString *enginePower;
@property (strong, nonatomic) Passanger *passanger;
@property (strong, nonatomic) Engine *engine;
@property (strong, nonatomic) PremiumCarBody *premiumCarBody;
@property (strong, nonatomic) SalonType *salonType;

@end

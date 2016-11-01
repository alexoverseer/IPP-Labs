//
//  Thermometer.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Thermometer.h"

@implementation Thermometer

-(void)temperatureChanged:(int)temperature {
    self.temperature = temperature;
    [self numbersChanged];
}

@end

//
//  Thermometer.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "SmartHousePart.h"

@interface Thermometer : SmartHousePart

@property (nonatomic) int temperature;
-(void) temperatureChanged:(int) temperature;

@end

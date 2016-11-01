//
//  CentrallProcessor.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CentrallProcessor.h"

@implementation CentrallProcessor

- (void)valueChanged:(id)aPart {
    
    NSLog(@"Value at factory changed! We need to cool the system !");
    //detecting that changes are done by thermometer
    if ([aPart isKindOfClass:[Thermometer class]])
    {
        NSLog(@"Oh, the change is temperature");
        [[self _condSystem] startCondition];
    }
}

@end

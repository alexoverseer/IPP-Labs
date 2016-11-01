//
//  AnyCarTemplate.m
//  IPP 1
//
//  Created by Ana Rotari on 31/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "AnyCarTemplate.h"

@implementation AnyCarTemplate

- (void)makeCar {
    
    [self takeWheels];
    [self takeSalon];
    [self takeBody];
    [self assemble];
}

- (void)takeWheels {
    
    NSLog(@"Taking a wheels");
}

- (void)takeSalon {
    
    NSLog(@"Taking a salon");
}

- (void)takeBody {
    
    NSLog(@"Taking a body");
}

- (void)assemble {
    
    NSLog(@"Assembling everythig");
}

@end

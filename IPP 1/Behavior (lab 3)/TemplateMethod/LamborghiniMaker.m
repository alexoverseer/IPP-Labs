//
//  LamborghiniMaker.m
//  IPP 1
//
//  Created by Ana Rotari on 31/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "LamborghiniMaker.h"

@implementation LamborghiniMaker

- (void)assemble {
    
    [self addHorsePower];
    [self addUserManual];
    [super assemble];
}

- (void)addHorsePower {
    
    NSLog(@"Installing extra 100 HP");
}

- (void)addUserManual {
    
    NSLog(@"Put nice user manual");
}

@end

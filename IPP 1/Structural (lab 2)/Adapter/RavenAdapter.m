//
//  RavenAdapter.m
//  IPP 1
//
//  Created by Ana Rotari on 11/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "RavenAdapter.h"

@implementation RavenAdapter

- (id)initWithRaven:(Raven*)adaptee {
    
    self = [super self];
    _raven = adaptee;
    return self;
}

- (void)sing {
    
    [_raven voice];
}

- (void)fly {
    
    [_raven flySearchAndDestroy];
}

@end

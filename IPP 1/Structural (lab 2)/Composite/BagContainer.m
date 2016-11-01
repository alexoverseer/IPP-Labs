//
//  BagContainer.m
//  IPP 1
//
//  Created by Ana Rotari on 30/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "BagContainer.h"

@implementation BagContainer

- (NSMutableArray *)components {
    
    if (_components == nil)
        _components = [[NSMutableArray alloc] init];
    return _components;
}

- (NSString *)getData {
    
    NSMutableString *valueToReturn = [[NSMutableString alloc] init];
    [valueToReturn appendString:@"\n[Bag Values]"];
    
    for ( id<CompositeObjectProtocol> object in _components) {
        
        [valueToReturn appendString:[object getData]];
    }
    
    [valueToReturn appendString:@"\n[End Bag Values]"];
    return valueToReturn;
}

- (void)addComponent:(id<CompositeObjectProtocol>)aComponent {
    
    [self.components addObject:aComponent];
}

@end

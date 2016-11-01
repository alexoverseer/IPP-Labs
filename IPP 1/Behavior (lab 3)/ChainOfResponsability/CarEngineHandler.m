//
//  CarEngineHandler.m
//  IPP 1
//
//  Created by Alex Overseer on 10/31/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CarEngineHandler.h"
#import "CarEngine.h"

@implementation CarEngineHandler

- (void)handleItem:(CarItem *)item {
    
    if ([item isKindOfClass:[CarEngine class]])
    {
        NSLog(@"Car engine found. Handling");
    }
    else
    {
        NSLog(@"Car engine not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}

@end

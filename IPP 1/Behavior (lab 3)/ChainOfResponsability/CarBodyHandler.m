//
//  CarBodyHandler.m
//  IPP 1
//
//  Created by Alex Overseer on 10/31/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CarBodyHandler.h"
#import "CarBody.h"

@implementation CarBodyHandler

-(void) handleItem:(CarItem *)item
{
    if ([item isKindOfClass:[CarBody class]])
    {
        NSLog(@"Car Body found. Handling");
    }
    else
    {
        NSLog(@"Car Body not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}

@end

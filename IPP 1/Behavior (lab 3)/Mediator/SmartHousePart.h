//
//  SmartHousePart.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CentrallProcessor;
@interface SmartHousePart : NSObject
{
    @private CentrallProcessor *_processor;
}

- (id)initWithCore:(CentrallProcessor *) processor;
- (void)numbersChanged;

@end

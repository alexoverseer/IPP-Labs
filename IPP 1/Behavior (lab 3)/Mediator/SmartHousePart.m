//
//  SmartHousePart.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "SmartHousePart.h"
#import "CentrallProcessor.h"

@implementation SmartHousePart

- (id)initWithCore:(CentrallProcessor *) processor {
    
    self = [super init];
    _processor = processor;
    return self;
}

- (void)numbersChanged {
    
    [_processor valueChanged:self];
}

@end

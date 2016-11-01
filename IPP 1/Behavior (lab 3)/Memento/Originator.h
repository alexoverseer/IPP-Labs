//
//  Originator.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"

@interface Originator : NSObject

- (void)changeValues;
- (OriginatorState *)getState;
- (void)setState:(OriginatorState *)oldState;

@end

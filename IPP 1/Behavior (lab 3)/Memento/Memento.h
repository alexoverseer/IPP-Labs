//
//  Memento.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"

@interface Memento : NSObject

-(id) initWithState:(OriginatorState *)state;
-(OriginatorState*) getState;

@end

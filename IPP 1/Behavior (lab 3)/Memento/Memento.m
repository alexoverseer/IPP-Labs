//
//  Memento.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Memento.h"

@interface Memento ()
{
    OriginatorState *_localState;
}

@end

@implementation Memento

-(id) initWithState:(OriginatorState *)state {
    
    self = [super init];
    _localState = [[OriginatorState alloc] init];
    [_localState setIntValue:state.intValue];
    [_localState setStringValue:state.stringValue];
    return self;
}

- (OriginatorState *)getState {
    
    return _localState;
}

@end

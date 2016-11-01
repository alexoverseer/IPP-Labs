//
//  Originator.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Originator.h"

@interface Originator ()
{
    OriginatorState *_localState;
}

@end

@implementation Originator

- (id)init {
    
    self = [super init];
    _localState = [[OriginatorState alloc] init];
    _localState.intValue = 10000;
    _localState.stringValue = @"Initial Stock's value";
    return self;
}

- (void)changeValues {
    
    _localState.intValue += 150;
    _localState.stringValue = [NSString stringWithFormat:@"%@ %@", _localState.stringValue, @"Level up"];
    NSLog(@"Current state Stock price = %i, Stock Value = %@", _localState.intValue, _localState.stringValue);
}

- (OriginatorState *)getState {
    
    return _localState;
}

- (void)setState:(OriginatorState *)oldState {
    
    _localState = oldState;
    NSLog(@"Load completed. Current state: int = %i, string = %@", _localState.intValue, _localState.stringValue);
}

@end

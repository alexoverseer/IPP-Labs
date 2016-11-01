//
//  Caretaker.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Caretaker.h"

@interface Caretaker () {
    
    Originator *_originator;
    Memento *_memento;
}

@end

@implementation Caretaker

- (void)changeValue {
    
    if (!_originator)
        _originator = [[Originator alloc] init];
    [_originator changeValues];
}

- (void)saveState {
    
    _memento = [[Memento alloc] initWithState:[_originator getState]];
    NSLog(@"Saved state. State int = %i and string = %@",[[_memento getState] intValue ], [[_memento getState] stringValue ]);
}

- (void)loadState {
    
    [_originator setState:[_memento getState]];
}

@end

//
//  Caretaker.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Originator.h"
#import "Memento.h"

@interface Caretaker : NSObject 

-(void) changeValue;
-(void) saveState;
-(void) loadState;

@end

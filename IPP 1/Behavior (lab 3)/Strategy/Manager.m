//
//  Manager.m
//  IPP 1
//
//  Created by Ana Rotari on 01/11/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(void) makeAction {
    
    [self._strategy actionCharacter1];
    [self._strategy actionCharacter2];
    [self._strategy actionCharacter3];
}

-(void) changeStrategy:(BasicStrategy *) strategy {
    
    self._strategy = strategy;
}

@end

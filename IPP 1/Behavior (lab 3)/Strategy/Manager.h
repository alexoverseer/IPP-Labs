//
//  Manager.h
//  IPP 1
//
//  Created by Ana Rotari on 01/11/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicStrategy.h"

@interface Manager : NSObject

@property (nonatomic, strong) BasicStrategy *_strategy;

-(void) makeAction;
-(void) changeStrategy:(BasicStrategy *) strategy;

@end

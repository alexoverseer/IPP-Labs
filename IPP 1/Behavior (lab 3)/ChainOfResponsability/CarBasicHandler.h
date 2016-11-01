//
//  CarBasicHandler.h
//  IPP 1
//
//  Created by Alex Overseer on 10/31/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarItem.h"

@interface CarBasicHandler : NSObject

@property (nonatomic, strong) CarBasicHandler *nextHandler;

-(void) handleItem:(CarItem *) item;

@end

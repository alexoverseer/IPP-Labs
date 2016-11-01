//
//  CoatObject.h
//  IPP 1
//
//  Created by Ana Rotari on 30/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompositeObjectProtocol.h"

@interface CoatObject : NSObject <CompositeObjectProtocol>

@property (nonatomic, strong) NSString *coatColor;

@end

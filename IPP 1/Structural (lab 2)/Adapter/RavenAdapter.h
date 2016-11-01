//
//  RavenAdapter.h
//  IPP 1
//
//  Created by Ana Rotari on 11/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Bird.h"
#import "Raven.h"

@interface RavenAdapter : Bird 

@property (nonatomic, strong) Raven *raven;

- (id)initWithRaven:(Raven*)adaptee;

@end

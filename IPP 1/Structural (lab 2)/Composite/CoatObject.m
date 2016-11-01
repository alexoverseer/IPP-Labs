//
//  CoatObject.m
//  IPP 1
//
//  Created by Ana Rotari on 30/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CoatObject.h"

@implementation CoatObject

- (NSString *)getData {
    
    return [[NSString alloc] initWithFormat:@"\n    [Coat color: %@]",self.coatColor];
}

- (void)addComponent:(id<CompositeObjectProtocol>)aComponent {
    
    NSLog(@"Can't add component. Sorry, man");
}

@end

//
//  CompositeObjectProtocol.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CompositeObjectProtocol <NSObject>

@required
- (NSString *)getData;
- (void)addComponent:(id<CompositeObjectProtocol>)aComponent;

@end

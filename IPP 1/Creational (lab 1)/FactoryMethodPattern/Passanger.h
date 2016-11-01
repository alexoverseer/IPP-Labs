//
//  Passanger.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Passanger : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger salary;

- (NSInteger)getSalary:(int)salary;
- (void)passangerStatus;

@end

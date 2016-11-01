//
//  Passanger.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Passanger.h"

@implementation Passanger

- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@: %d $", self.name, self.salary];
}

- (NSInteger)getSalary:(int)salary {
    
    return self.salary + salary;
}

- (void)passangerStatus {
    
    NSLog(@"%@",[self description]);
}

@end

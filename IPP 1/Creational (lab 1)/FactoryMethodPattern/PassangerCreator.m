//
//  PassangerCreator.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "PassangerCreator.h"
#import "RichPassanger.h"
#import "PoorPassanger.h"

@implementation PassangerCreator

- (Passanger *)returnPassanger:(int)salary {
    
    if (salary > 0 && salary < 2000)
    {
        PoorPassanger *poorPassanger = [[PoorPassanger alloc] init];
        poorPassanger.name = @"John Black";
        poorPassanger.salary = salary;
        return poorPassanger;
    }
    else if (salary > 2000)
    {
        RichPassanger *richPassanger = [[RichPassanger alloc] init];
        richPassanger.name = @"Alex Overseer";
        richPassanger.salary = salary;
        return richPassanger;
    }
    return nil;
}

@end

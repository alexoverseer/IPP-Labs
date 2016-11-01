//
//  SingletonPattern.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "SingletonPattern.h"

@implementation SingletonPattern

static NSString *carNames[] = {
    
    @"Koenigsegg CCXR Trevita", @"Lamborghini Veneno", @"W Motors Lykan Hypersport", @"Bugatti Veyron", @"Ferrari Pininfarina Sergio", @"Pagani Huayra BC", @"Ferrari F60 America", @"Bugatti Chiron", @"Koenigsegg One:1", @"Koenigsegg Regera"
};

static NSString *carColors[] = {
    
    @"Black", @"White", @"Grey", @"Red", @"Yellow", @"Green", @"Torquoise", @"Blue", @"Purple", @"Red"
};

static NSString *carEnginePower[] = {
    
    @"100", @"150", @"200", @"250", @"300", @"350", @"400", @"450", @"500", @"550"
};

+ (instancetype)sharedObject {
    
    __strong static SingletonPattern *sharedObject = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedObject = [[SingletonPattern alloc] init];
    });
    return sharedObject;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSLog(@"Singleton created");
    }
    return self;
}

- (NSString *)generateCarName {
    
    return carNames[arc4random_uniform(10)];
}

- (NSString *)generateCarColor {
    
    return carColors[arc4random_uniform(10)];
}

- (NSString *)generateCarEnginePower {
    
    return carEnginePower[arc4random_uniform(10)];
}

@end

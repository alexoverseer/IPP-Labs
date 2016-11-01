//
//  SingletonPattern.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonPattern : NSObject

+ (instancetype)sharedObject;

- (NSString *)generateCarName;
- (NSString *)generateCarColor;
- (NSString *)generateCarEnginePower;

@end

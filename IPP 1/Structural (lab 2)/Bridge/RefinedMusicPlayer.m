//
//  RefinedMusicPlayer.m
//  IPP 1
//
//  Created by Ana Rotari on 16/10/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "RefinedMusicPlayer.h"

@implementation RefinedMusicPlayer

- (instancetype)initWithMusicPlayer:(BaseHeadphones *)headphones
{
    self = [super init];
    if (self) {
        self.headPhones = headphones;
    }
    return self;
}

-(void) playMusic {
    
    [self.headPhones playBassSound];
    [self.headPhones playBassSound];
    [self.headPhones playSimpleSound];
    [self.headPhones playSimpleSound];
}

@end

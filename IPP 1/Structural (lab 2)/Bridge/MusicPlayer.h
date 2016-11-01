//
//  MusicPlayer.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseHeadphones.h"

@interface MusicPlayer : NSObject

@property (nonatomic, strong) BaseHeadphones *headPhones;

- (void)playMusic;

@end

//
//  Human.h
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

//Adapter
#import "RavenAdapter.h"

//Bridge
#import "MusicPlayer.h"
#import "CheapHeadphones.h"
#import "ExpensiveHeadphones.h"

//new
#import "RefinedMusicPlayer.h"

//Decorator
#import "Burger.h"
#import "CheeseNew.h"
#import "FrenchFriesNew.h"
#import "SoftDrinksNew.h"

//Facade
#import "TravellSystemFacade.h"

//Composite
#import "CoatObject.h"
#import "BagContainer.h"

@interface Human : NSObject

@property (strong, nonatomic) Bird *birdBuddy;
@property (strong, nonatomic) MusicPlayer *musicPlayer;
@property (strong, nonatomic) NSString *cityToTravel;
@property (strong, nonatomic) Burger *travelFoodBurger;
@property (strong, nonatomic) BagContainer *bagContainer;

@end

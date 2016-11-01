//
//  Human.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "Human.h"

@implementation Human

static NSString *citiesNames[] = {
    
    @"Singapore", @"Moscow", @"London", @"Paris", @"Rio De Janeiro", @"California", @"Madagascar", @"Tokyo", @"Frankfurt", @"Bucuresti"
};

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Find a bird");
        [self generateBuddy];
        NSLog(@"\n");
        NSLog(@"Get music player and playe music");
        [self generateMusicPlayer];
        NSLog(@"\n");
        NSLog(@"Get tasty burger");
        [self generateTripFood];
        NSLog(@"\n");
        NSLog(@"Prepare bag");
        [self prepareBag];
        NSLog(@"\n");
        NSLog(@"Where we go to travel ?");
        [self generateCityToTravel];
    }
    return self;
}

#pragma mark - Adapter

- (void)generateBuddy {
    
    Raven *simpleRaven = [[Raven alloc] init];
    RavenAdapter *ravenAdapter = [[RavenAdapter alloc] initWithRaven:simpleRaven];
    self.birdBuddy = ravenAdapter;
    [self makeTheBirdTest:self.birdBuddy];
}

- (void)makeTheBirdTest:(Bird*)aBird {
    
    [aBird fly];
    [aBird sing];
}

#pragma mark - Bridge pattern

- (void)generateMusicPlayer {
    
    CheapHeadphones *cheapHeadphones = [[CheapHeadphones alloc] init];
    ExpensiveHeadphones *expensiveHeadphones = [[ExpensiveHeadphones alloc] init];
    
    if (arc4random_uniform(4000) > 2000)
    {
        self.musicPlayer = [[RefinedMusicPlayer alloc] initWithMusicPlayer:cheapHeadphones];
    }
    else
    {
        self.musicPlayer = [[RefinedMusicPlayer alloc] initWithMusicPlayer:expensiveHeadphones];
    }
    
    [self.musicPlayer playMusic];
}

#pragma mark - Facade

- (void)generateCityToTravel {
    
    self.cityToTravel = citiesNames[arc4random_uniform(10)];
    TravellSystemFacade *facade = [[TravellSystemFacade alloc] init];
    [facade travellTo:self.cityToTravel];
}

#pragma mark - Decorator

- (void)generateTripFood {
    
    Burger *burger = [[Burger alloc] init];
    NSLog(@"Selected product: %@ price: %.0lf",burger.getDescription,burger.getPrice);
    
    Burger *burgerWithCheese = [[CheeseNew alloc] initWithBurger:burger];
    NSLog(@"Selected product: %@ price: %.0lf",burgerWithCheese.getDescription,burgerWithCheese.getPrice);
    
    Burger *burgerWithCheeseNfrenchFries = [[FrenchFriesNew alloc] initWithBurger:burgerWithCheese];
    NSLog(@"Selected product: %@ price: %.0lf",burgerWithCheeseNfrenchFries.getDescription,burgerWithCheeseNfrenchFries.getPrice);
    
    self.travelFoodBurger = [[SoftDrinksNew alloc] initWithBurger:burgerWithCheeseNfrenchFries];
    NSLog(@"Selected product: %@ price %.0lf",self.travelFoodBurger.getDescription,self.travelFoodBurger.getPrice);
}

#pragma mark - Composite

- (void)prepareBag {
    
    self.bagContainer = [[BagContainer alloc] init];
    CoatObject *object = [[CoatObject alloc] init];
    object.coatColor = @"Red color";
    [self.bagContainer addComponent:object];
    
    BagContainer *firstLevelContainer1 = [[BagContainer alloc] init];
    CoatObject *object2 = [[CoatObject alloc] init];
    object2.coatColor = @"Green color";
    
    [firstLevelContainer1 addComponent:object2];
    [self.bagContainer addComponent:firstLevelContainer1];
    
    BagContainer *firstLevelContainer2 = [[BagContainer alloc] init];
    CoatObject *object3 = [[CoatObject alloc] init];
    object3.coatColor = @"Black color";
    
    [firstLevelContainer2 addComponent:object3];
    [self.bagContainer addComponent:firstLevelContainer2];

    NSLog(@"%@", self.bagContainer.getData);
}

@end

//
//  CarPrororypePattern.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CarPrororypePattern.h"
#import "PassangerCreator.h"
#import "DieselEngineBuilder.h"
#import "PetrolEngineBuilder.h"
#import "EngineCustomer.h"
#import "USACarBodyFactory.h"
#import "RussiaCarBoddyFactory.h"
#import "CarBodyFactory.h"

@implementation CarPrororypePattern

- (id)clone {
    
    CarPrororypePattern *carCopy = [[CarPrororypePattern alloc] init];
    carCopy.name = self.name;
    carCopy.color = self.color;
    carCopy.enginePower = self.enginePower;
    carCopy.passanger = self.passanger;
    carCopy.engine = self.engine;
    carCopy.premiumCarBody = self.premiumCarBody;
    return carCopy;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.name = [[SingletonPattern sharedObject] generateCarName];
        self.color = [[SingletonPattern sharedObject] generateCarColor];
        self.enginePower = [[SingletonPattern sharedObject] generateCarEnginePower];
        self.passanger = [self getPassanger:arc4random_uniform(4000)];
        self.engine = [self getEngine];
        self.premiumCarBody = [self getPremiumCarBody];
    }
    return self;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@" Car name: %@\n Car color: %@\n Car power: %@\n Car owner: %@\n Car engine: %@\n Car body: %@\n %@", self.name, self.color, self.enginePower, [self.passanger description], [self.engine description], [self.premiumCarBody description], [self.salonType description]];
}

- (Passanger *)getPassanger:(int)salary
{
    PassangerCreator *productGenerator = [[PassangerCreator alloc] init];
    Passanger *passanger = [productGenerator returnPassanger:salary];
    return passanger;
}

- (Engine *)getEngine {
    
    EngineCustomer *engineCustomer = [[EngineCustomer alloc] init];
    DieselEngineBuilder *dieselEngineBuilder = [[DieselEngineBuilder alloc] init];
    PetrolEngineBuilder *petrolEngineBuilder = [[PetrolEngineBuilder alloc] init];
    
    if (self.passanger.salary > 0 && self.passanger.salary < 2000)
    {
        [engineCustomer setBulider:dieselEngineBuilder];
    }
    else if (self.passanger.salary > 2000)
    {
        [engineCustomer setBulider:petrolEngineBuilder];
    }
    
    [engineCustomer constructEngine];
    return [engineCustomer getEngine];
}

//Pentru exemplu Abstract Factory
- (PremiumCarBody *)getPremiumCarBody {
    
    CarBodyFactory *carBodyFactory;
    if (self.passanger.salary > 0 && self.passanger.salary < 2000)
    {
        carBodyFactory = [[RussiaCarBoddyFactory alloc] init];
    }
    else if (self.passanger.salary > 2000)
    {
        carBodyFactory = [[USACarBodyFactory alloc] init];
    }
    [self getSalonType:carBodyFactory];
    return  carBodyFactory.getCarBody;
}

- (void)getSalonType:(CarBodyFactory*)carBodyFactory {

    self.salonType = carBodyFactory.getSalon;
}

@end

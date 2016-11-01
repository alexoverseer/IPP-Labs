//
//  CarAssembler.m
//  IPP 1
//
//  Created by Alex Overseer on 10/31/16.
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "CarAssembler.h"

//Chain of Responsability
#import "CarItem.h"
#import "CarBasicHandler.h"
#import "CarEngineHandler.h"
#import "CarBodyHandler.h"
#import "CarEngine.h"
#import "CarBody.h"

//Mediator
#import "CentrallProcessor.h"

//Template Method
#import "FerraryMaker.h"
#import "LamborghiniMaker.h"

//Strategy
#import "Manager.h"
#import "CollectPartsStrategy.h"
#import "AssemblyAllStrategy.h"

//Memento
#import "Caretaker.h"

@interface CarAssembler ()

@property (strong, nonatomic) Caretaker *caretaker;

@end

@implementation CarAssembler

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.caretaker = [[Caretaker alloc] init];
        [self.caretaker changeValue];
        [self.caretaker saveState];
        NSLog(@"Begin find necessary parts for car:");
        [self findNecesaryParts];
        [self.caretaker changeValue];
        NSLog(@"\n");
        NSLog(@"Check air temperature:");
        [self checkFactoryAirTemperature];
        [self.caretaker changeValue];
        NSLog(@"\n");
        NSLog(@"Get all parts together");
        [self preparePartsForCarAndUseStrategy];
        [self.caretaker changeValue];
        NSLog(@"Memento");
    }
    return self;
}

- (void)findNecesaryParts {
    
    CarBasicHandler *carEngineHandler = [[CarEngineHandler alloc] init];
    CarBasicHandler *carBodyHandler = [[CarBodyHandler alloc] init];
    
    carEngineHandler.nextHandler = carBodyHandler;
    
    CarItem *carEngine1 = [[CarEngine alloc] init];
    CarItem *carBody1 = [[CarBody alloc] init];
    CarItem *carEngine2 = [[CarEngine alloc] init];
    CarItem *carBody2 = [[CarBody alloc] init];
    
    [carEngineHandler handleItem:carEngine1];
    [carEngineHandler handleItem:carBody1];
    [carEngineHandler handleItem:carBody2];
    [carEngineHandler handleItem:carEngine2];
}

#pragma mark - Mediator

- (void)checkFactoryAirTemperature {
    
    CentrallProcessor *proccessor = [[CentrallProcessor alloc] init];
    Thermometer *therm = [[Thermometer alloc] initWithCore:proccessor];
    ConditioningSystem *condSystem = [[ConditioningSystem alloc] initWithCore:proccessor];
    
    proccessor._condSystem = condSystem;
    proccessor._thermometer = therm;
    [therm temperatureChanged:45];
}

- (void)preparePartsForCarAndUseStrategy {
    
    FerraryMaker *ferraryMaker = [[FerraryMaker alloc] init];
    LamborghiniMaker *lamborghiniMaker = [[LamborghiniMaker alloc] init];
    
    //Strategy
    Manager *manager = [[Manager alloc] init];
    CollectPartsStrategy *collectPartsStrategy = [[CollectPartsStrategy alloc] init];
    AssemblyAllStrategy *assemblyAllStrategy = [[AssemblyAllStrategy alloc] init];
    
    [manager changeStrategy:collectPartsStrategy];
    [manager makeAction];
    
    NSLog(@"Assemble Ferrari");
    [ferraryMaker makeCar];
    NSLog(@"Assemble Lamborghini");
    [lamborghiniMaker makeCar];
    
    [manager changeStrategy:assemblyAllStrategy];
    [manager makeAction];
    
    [self.caretaker loadState];
}

@end

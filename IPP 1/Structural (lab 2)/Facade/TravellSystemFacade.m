//
//  TravellSystemFacade.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "TravellSystemFacade.h"
#import "PathFinder.h"
#import "TravellEngine.h"
#import "TicketPrinitingSystem.h"

@implementation TravellSystemFacade

- (void)travellTo:(NSString *)location {
    
    PathFinder *pathFinder = [[PathFinder alloc] init];
    TravellEngine *travellEngine = [[TravellEngine alloc] init];
    TicketPrinitingSystem *ticketPrinitingSystem = [[TicketPrinitingSystem alloc] init];
    
    [pathFinder findCurrentLocation];
    [pathFinder findLocationToTravel:location];
    [pathFinder makeARoute];
    [travellEngine findTransport];
    [travellEngine orderTransport];
    [ticketPrinitingSystem createTicket];
    [ticketPrinitingSystem printingTicket];
    [travellEngine travel];
}

@end

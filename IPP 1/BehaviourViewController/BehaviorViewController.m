//
//  BehaviorViewController.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "BehaviorViewController.h"
#import "CarAssembler.h"

@interface BehaviorViewController ()

@property (strong, nonatomic) NSMutableArray *sickPeople;

@end

@implementation BehaviorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sickPeople = [[NSMutableArray alloc] init];
}

- (IBAction)generateSickButtonActiom:(id)sender {
    
    CarAssembler *carAssembler = [[CarAssembler alloc] init];
    [self.sickPeople addObject:carAssembler];
}

@end

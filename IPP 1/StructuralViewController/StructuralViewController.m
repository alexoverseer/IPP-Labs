//
//  StructuralViewController.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "StructuralViewController.h"
#import "Human.h"

@interface StructuralViewController ()

@property (strong, nonatomic) NSMutableArray *humanArray;

@end

@implementation StructuralViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.humanArray = [[NSMutableArray alloc] init];
}

- (IBAction)generateHumanButtonAction:(id)sender {
    
    Human *newHuman = [[Human alloc] init];
    [self.humanArray addObject:newHuman];
}

@end

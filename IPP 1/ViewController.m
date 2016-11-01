//
//  ViewController.m
//  IPP 1
//
//  Copyright © 2016 Alex Overseer's Crafting Solutions. All rights reserved.
//

#import "ViewController.h"
#import "CarPrororypePattern.h"
#import "CarTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *arrayWithCars;
@property (weak, nonatomic) IBOutlet UITableView *carsTableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.arrayWithCars = [[NSMutableArray alloc] init];
    [self.carsTableView registerNib:[UINib nibWithNibName:@"CarTableViewCell" bundle:nil]
             forCellReuseIdentifier:@"CarTableViewCell"];
}

- (IBAction)generateCarButtonAction:(id)sender {
    
    CarPrororypePattern *newCar = [[CarPrororypePattern alloc] init];
    if (self.arrayWithCars.count == 1) {
        CarPrororypePattern *newCarCopy = [[self.arrayWithCars lastObject] clone];
        newCarCopy.name = @"Prototype pattern !";
        newCarCopy.color = @"Prototype pattern !";
        [self.arrayWithCars addObject:newCarCopy];
    }
    else
    {
        [self.arrayWithCars addObject:newCar];
    }
    [self.carsTableView reloadData];
    [self.carsTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self.arrayWithCars.count-1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.arrayWithCars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CarTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CarTableViewCell" forIndexPath:indexPath];
    
    cell.carDetailLabel.text = [self.arrayWithCars[indexPath.row] description];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 150;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

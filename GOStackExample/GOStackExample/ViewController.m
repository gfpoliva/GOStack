//
//  ViewController.m
//  GOStackExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import "ViewController.h"
#import "GOStack.h"
#import "NSMutableArray+GOStack.h"

@interface ViewController () <UITableViewDataSource>
{
    GOStack *stack;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)pushButton;
- (IBAction)popButton;
- (IBAction)insertAtBottomButton;
- (IBAction)numberOfElementsButtom;

@end

@implementation ViewController

- (void)viewDidLoad
{
    stack = [[GOStack alloc] init];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectio
{
    return stack.numberOfElements;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithGOStack:stack];
    cell.textLabel.text = [NSString stringWithFormat:@"Number %d: %@", indexPath.row, [mutableArray objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark - Buttons functionalities

- (IBAction)pushButton
{
    NSNumber *random = [NSNumber numberWithInt:arc4random() % 99999];
    [stack push:random];
    
    [self.tableView reloadData];
}

- (IBAction)popButton
{
    [stack pop];
    [self.tableView reloadData];
}

- (IBAction)insertAtBottomButton
{
    NSNumber *random = [NSNumber numberWithInt:arc4random() % 99999];
    [stack insertAtBottom:random];
    
    [self.tableView reloadData];
}

- (IBAction)numberOfElementsButtom
{
    NSString *message = [NSString stringWithFormat:@"%d", stack.numberOfElementsInStack];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Number of elements in Stack"
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    
    [alert show];
}

@end

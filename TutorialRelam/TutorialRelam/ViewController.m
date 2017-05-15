//
//  ViewController.m
//  TutorialRelam
//
//  Created by Erick on 12/05/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import "ViewController.h"
#import "PeopleCell.h"

@interface ViewController ()
{
    Alert *alert;
    RLMResults *tableArray;
    PeopleInformationTable *selectedDataObject;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    alert = [[Alert alloc]init];
    alert.delegate = self;
    selectedDataObject = [[PeopleInformationTable alloc]init];
    tableArray = [PeopleInformationTable allObjects];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"PeopleCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"PeopleCell"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)didTapInsertBtn:(id)sender
{
    [alert showAlertWithTitle:@"Ingresa" andMessage:@"Ingrese los siguientes datos" andDelegate:self];
    NSLog(@"didTapInsertBtn");
}
-(IBAction)didTapDeleteBtn:(id)sender
{
}

#pragma mark -Alert Delegate

-(void)AlertOkForName:(NSString *)name andCity:(NSString *)city
{
    NSLog(@"Name : %@",name);
    [DataBase insertDataBaseWithName:name withCity:city];
    tableArray = [PeopleInformationTable allObjects];
    [self.tableView reloadData];
}

#pragma mark -UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"tabeAray count = %lu",tableArray.count);
    return tableArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"PeopleCell";
    
    PeopleCell *cell = (PeopleCell*) [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if(cell == nil)
    {
        cell = [[PeopleCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    PeopleInformationTable *people = [tableArray objectAtIndex:indexPath.row];

    cell.lblName.text = people.name;
    cell.lblCity.text = people.city;
    
    return cell;
}

@end

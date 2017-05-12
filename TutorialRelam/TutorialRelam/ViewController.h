//
//  ViewController.h
//  TutorialRelam
//
//  Created by Erick on 12/05/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PeopleInformationTable.h"

@interface ViewController : UIViewController
{
    RLMResults *tableArray;
    PeopleInformationTable *selectedDataObject;
}

-(IBAction)didTapInsertBtn:(id)sender;
-(IBAction)didTapDeleteBtn:(id)sender;

@property(strong, nonatomic)IBOutlet UITableView *tableView;

@end


//
//  ViewController.h
//  TutorialRelam
//
//  Created by Erick on 12/05/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Alert.h"

@interface ViewController : UIViewController <AlertViewDelegate,UITableViewDelegate,UITableViewDataSource>

-(IBAction)didTapInsertBtn:(id)sender;
-(IBAction)didTapDeleteBtn:(id)sender;

@property(strong, nonatomic)IBOutlet UITableView *tableView;

@end


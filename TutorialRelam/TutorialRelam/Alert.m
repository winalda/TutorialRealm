//
//  Alert.m
//  TutorialRelam
//
//  Created by Erick Alberto Morales Ledesma on 13/05/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import "Alert.h"

@implementation Alert

@synthesize delegate = _delegate;
@synthesize txfName = _txfName;
@synthesize txfCity = _txfCity;

-(void)showAlertWithTitle:(NSString*_Nullable)title andMessage:(NSString*_Nullable)message andDelegate:(id _Nullable )delegate
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField)
    {
        textField.placeholder = @"Name :";
        textField.delegate = delegate;
        _txfName = textField;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField)
    {
        textField.placeholder = @"City :";
        textField.delegate = delegate;
        _txfCity = textField;
    }];
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
    {
        [_delegate AlertOkForName:_txfName.text andCity:_txfCity.text];
    }];
    
    [alertController addAction:alertAction];
    [delegate presentViewController:alertController animated:YES completion:nil];
}

@end


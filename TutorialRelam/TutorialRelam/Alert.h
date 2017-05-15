//
//  Alert.h
//  TutorialRelam
//
//  Created by Erick Alberto Morales Ledesma on 13/05/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AlertViewDelegate <NSObject>

@required
-(void)AlertOkForName:(NSString* _Nullable)name andCity:(NSString* _Nullable)city;
@end

@interface Alert : NSObject

NS_ASSUME_NONNULL_BEGIN
@property(weak, nonatomic)id<AlertViewDelegate>delegate;
NS_ASSUME_NONNULL_END

@property(strong, nonatomic)UITextField * _Nullable txfName;
@property(strong, nonatomic)UITextField * _Nullable txfCity;

-(void)showAlertWithTitle:(NSString*_Nullable)title andMessage:(NSString*_Nullable)message andDelegate:(id _Nullable )delegate;

@end

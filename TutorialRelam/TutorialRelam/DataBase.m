//
//  DataBase.m
//  TutorialRelam
//
//  Created by Erick Alberto Morales Ledesma on 13/05/17.
//  Copyright © 2017 Erick. All rights reserved.
//

#import "DataBase.h"

@implementation DataBase

+(void)insertDataBaseWithName:(NSString* _Nullable)name withCity:(NSString* _Nullable)city
{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    
    PeopleInformationTable *information = [[PeopleInformationTable alloc] init];
    information.name=name;
    information.city=city;
    
    [realm addObject:information];
    [realm commitWriteTransaction];
}

@end

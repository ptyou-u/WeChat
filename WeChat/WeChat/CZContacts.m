//
//  CZContacts.m
//  WeChat
//
//  Created by P tYou on 2021/5/5.
//  Copyright © 2021年 P tYou. All rights reserved.
//

#import "CZContacts.h"

@implementation CZContacts
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if(self = [super init]){
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)ContactsWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
@end

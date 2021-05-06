//
//  CZContacts.h
//  WeChat
//
//  Created by P tYou on 2021/5/5.
//  Copyright © 2021年 P tYou. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CZContacts : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *img;
@property (nonatomic, copy) NSString *phone;

- (instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)ContactsWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

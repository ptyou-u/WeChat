//
//  Discover.h
//  WeChat
//
//  Created by P tYou on 2021/5/5.
//  Copyright © 2021年 P tYou. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Discover : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imgViewIcon;
@property (nonatomic, copy) NSString *Text;
@property (nonatomic, copy) NSString *imgViewPicture;

- (instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)DiscoverWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

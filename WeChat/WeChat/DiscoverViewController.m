//
//  DiscoverViewController.m
//  WeChat
//
//  Created by P tYou on 2021/5/4.
//  Copyright © 2021年 P tYou. All rights reserved.
//

#import "DiscoverViewController.h"

@interface DiscoverViewController ()

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel * label=[[UILabel alloc]initWithFrame:CGRectMake(50, 100, 300, 200)];
    label.text=@"afds";
    [self.view addSubview:label];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

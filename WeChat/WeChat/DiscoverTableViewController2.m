//
//  DiscoverTableViewController2.m
//  WeChat
//
//  Created by P tYou on 2021/5/5.
//  Copyright © 2021年 P tYou. All rights reserved.
//

#import "DiscoverTableViewController2.h"
#import "DynamicCell.h"
#import "CellModel.h"
@interface DiscoverTableViewController2 ()
@property (nonatomic,strong)UITableView * tabelView;
@property (nonatomic,strong)NSMutableArray * dataArray;

@end

@implementation DiscoverTableViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _tabelView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    _tabelView.delegate = self;
    _tabelView.dataSource = self;
    [self.view addSubview:_tabelView];
    [self testData];
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    _tabelView.frame = self.view.bounds;
}

- (void)testData{
    _dataArray = [NSMutableArray array];
    for (int i =0; i<4; i++) {
        CellModel *model = [[CellModel alloc]init];
        model.avator = @"head0";
        model.name = @"sfdaf";
        model.title = @"sfsaf";
        model.time = @"5分钟";
        model.comemtNum = @"100";
        model.zanNum = @"120";
        model.content = @" safsadf ";
        
        if (i==1) {
            model.imgsss = @"11";
            model.content = @"fewqfewfewfewfewfwe！";
            
        }else if(i == 2){
            model.imgsss = @"11,22,33,44";
            model.content = @"fewfewfewfewfw";
            
        }else if(i == 3){
            model.imgsss = @"11,22,33,44,55,66";
        }
        [_dataArray addObject:model];
    }
    [_tabelView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CellModel *model = _dataArray[indexPath.row];
    NSArray * imgs = [model.imgsss componentsSeparatedByString:@","];
    return  [DynamicCell cellHeightWithStr:model.content imgs:imgs];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DynamicCell * cell = [DynamicCell dynamicCellWithTable:tableView];
    
    cell.model = _dataArray[indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

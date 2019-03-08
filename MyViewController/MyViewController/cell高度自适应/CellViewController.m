//
//  CellViewController.m
//  MyViewController
//
//  Created by 吴棒棒 on 2018/7/9.
//  Copyright © 2018年 cjh. All rights reserved.
//
/**
 *　　　　　　　 ┏┓       ┏┓+ +
 *　　　　　　　┏┛┻━━━━━━━┛┻┓ + +
 *　　　　　　　┃　　　　　　 ┃
 *　　　　　　　┃　　　━　　　┃ ++ + + +
 *　　　　　　 █████━█████  ┃+
 *　　　　　　　┃　　　　　　 ┃ +
 *　　　　　　　┃　　　┻　　　┃
 *　　　　　　　┃　　　　　　 ┃ + +
 *　　　　　　　┗━━┓　　　 ┏━┛
 *               ┃　　  ┃
 *　　　　　　　　　┃　　  ┃ + + + +
 *　　　　　　　　　┃　　　┃　Code is far away from     bug with the animal protecting
 *　　　　　　　　　┃　　　┃ + 　　　　         神兽保佑,代码无bug
 *　　　　　　　　　┃　　　┃
 *　　　　　　　　　┃　　　┃　　+
 *　　　　　　　　　┃　 　 ┗━━━┓ + +
 *　　　　　　　　　┃ 　　　　　┣┓
 *　　　　　　　　　┃ 　　　　　┏┛
 *　　　　　　　　　┗┓┓┏━━━┳┓┏┛ + + + +
 *　　　　　　　　　 ┃┫┫　 ┃┫┫
 *　　　　　　　　　 ┗┻┛　 ┗┻┛+ + + +
 */

#import "CellViewController.h"
@interface CellViewControllerCell : UITableViewCell
@property (nonatomic, strong) UILabel *lab;
@end
@implementation CellViewControllerCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _lab = [[UILabel alloc] init];
        _lab.numberOfLines = 0;
        [self addSubview:_lab];
        [_lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(100);
            make.top.bottom.mas_equalTo(0);
            make.centerX.equalTo(self.mas_centerX);
        }];
    }
    return self;
}
@end

@interface CellViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, copy) NSArray *dataArr;
@end

@implementation CellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _dataArr = @[@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath",@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath",@"estimatedHeightForRowAtIndexPath",@"123\n123\n123\n123\n123\n123\n123\n123",@"123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123",@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath",@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath",@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath",@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath",@"estimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPathestimatedHeightForRowAtIndexPath"];
}
- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
    return _dataArr.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"listviewid";
    CellViewControllerCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell == nil) {
        cell = [[CellViewControllerCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    }
    cell.lab.text = _dataArr[indexPath.row];
    [_tableView layoutIfNeeded];
    [_tableView updateConstraintsIfNeeded];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end


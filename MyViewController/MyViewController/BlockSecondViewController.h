//
//  BlockSecondViewController.h
//  MyViewController
//
//  Created by 杨飞 on 16/10/20.
//  Copyright © 2016年 cjh. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^HuiDiaoBloack)();
@interface BlockSecondViewController : UIViewController
@property(nonatomic,copy)HuiDiaoBloack huiDiaoBlock;
@end

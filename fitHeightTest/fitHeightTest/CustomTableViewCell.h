//
//  CustomTableViewCell.h
//  fitHeightTest
//
//  Created by lanou3g on 16/2/29.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (nonatomic, strong)UILabel *label;
+ (CGFloat)labelHeightWithSting:(NSString *)string;
@end

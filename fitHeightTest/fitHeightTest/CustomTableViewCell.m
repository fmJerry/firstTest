//
//  CustomTableViewCell.m
//  fitHeightTest
//
//  Created by lanou3g on 16/2/29.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self creatLabel];
    }
    return self;
}

- (void)creatLabel
{
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 50)];
    self.label.backgroundColor = [UIColor redColor];
    self.label.numberOfLines = 0;
    [self addSubview:self.label];
}

+ (CGFloat)labelHeightWithSting:(NSString *)string
{
    CGSize asize = CGSizeMake(100, 0);
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:17]};
    CGRect rect = [string boundingRectWithSize:asize options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];
    return rect.size.height;
}


@end

//
//  CustomTableViewCell.m
//  Demo
//
//  Created by lvjunhang on 2020/4/8.
//  Copyright © 2020 lvjunhang. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)didClickDeleteButton:(UIButton *)sender {
    !self.deleteHandler ?: self.deleteHandler();
}

@end

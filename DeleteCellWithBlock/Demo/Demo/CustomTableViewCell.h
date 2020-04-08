//
//  CustomTableViewCell.h
//  Demo
//
//  Created by lvjunhang on 2020/4/8.
//  Copyright © 2020 lvjunhang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;

@property (copy, nonatomic) void(^deleteHandler)(void);

@end

NS_ASSUME_NONNULL_END

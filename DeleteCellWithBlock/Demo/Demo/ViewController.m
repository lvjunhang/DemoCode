//
//  ViewController.m
//  Demo
//
//  Created by lvjunhang on 2020/1/16.
//  Copyright © 2020 lvjunhang. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *names;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.names = @[@"name 1", @"name 2", @"name 3", @"name 4"].mutableCopy;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *name = [self.names objectAtIndex:indexPath.row];
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    cell.nameLabel.text = name;
    __weak typeof(cell) weakcell = cell;
    cell.deleteHandler = ^{
        NSIndexPath *realtimeIndexPath = [tableView indexPathForCell:weakcell];
        [self deleteWithIndexPath:realtimeIndexPath];
    };
    return cell;
}

- (void)deleteWithIndexPath:(NSIndexPath *)indexPath {
    [self.names removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end

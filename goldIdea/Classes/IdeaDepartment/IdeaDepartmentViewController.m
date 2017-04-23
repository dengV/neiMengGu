//
//  IdeaDepartmentViewController.m
//  goldIdea
//
//  Created by 邓江洲 on 17/4/16.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "IdeaDepartmentViewController.h"
#import "BoolIdeaViewController.h"


@interface IdeaDepartmentViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation IdeaDepartmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  5;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UITableViewCell alloc] init ];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    BoolIdeaViewController * boolIdeaCtrl = [[BoolIdeaViewController alloc ] initWithNibName: @"BoolIdeaViewController" bundle: nil ];
    [self.navigationController pushViewController: boolIdeaCtrl animated: YES ];
    ;
    
}


@end

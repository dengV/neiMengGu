//
//  IdeaCollectionViewController.m
//  goldIdea
//
//  Created by 邓江洲 on 17/4/16.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "IdeaCollectionViewController.h"
#import "SecondBoolIdeaViewController.h"

@interface IdeaCollectionViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation IdeaCollectionViewController

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
    
    SecondBoolIdeaViewController * secondBoolCtrl = [[SecondBoolIdeaViewController alloc ] initWithNibName: @"SecondBoolIdeaViewController" bundle: nil ];
    
    [self.navigationController pushViewController: secondBoolCtrl animated: YES ];
    
    
}


@end

//
//  MyIdeaCollectionViewController.m
//  goldIdea
//
//  Created by 邓江洲 on 17/4/16.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "MyIdeaCollectionViewController.h"
#import "ReviewMyIdeaViewController.h"

@interface MyIdeaCollectionViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation MyIdeaCollectionViewController

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
    ReviewMyIdeaViewController * reviewCtrl = [[ReviewMyIdeaViewController alloc ] initWithNibName: @"ReviewMyIdeaViewController" bundle: nil ];
    [self.navigationController pushViewController: reviewCtrl animated: YES ];
    ;


}


@end

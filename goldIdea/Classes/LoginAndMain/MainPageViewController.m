//
//  MainPageViewController.m
//  goldIdea
//
//  Created by 邓江洲 on 17/4/16.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "MainPageViewController.h"

#import "PostIdeaViewController.h"
#import "IdeaDepartmentViewController.h"
#import "MyIdeaCollectionViewController.h"
#import "IdeaCollectionViewController.h"

@interface MainPageViewController ()

@end

@implementation MainPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
}





- (IBAction)toPostGoldIdea:(UIButton *)sender {
    
    
    [self.navigationController pushViewController: [[PostIdeaViewController alloc ] initWithNibName: @"PostIdeaViewController" bundle: nil  ] animated: YES ];
    
    
}



- (IBAction)IdeaDepartmentJudge:(UIButton *)sender {
    
    [self.navigationController pushViewController: [[IdeaDepartmentViewController alloc ] init ] animated: YES ];
    
    
    
}


- (IBAction)CheckMyIdea:(UIButton *)sender {
    
    [self.navigationController pushViewController:[ [MyIdeaCollectionViewController alloc] init ] animated: YES ];
    
    
    
}


- (IBAction)IdeaCollectionsCheck:(UIButton *)sender {
    
    
    [self.navigationController pushViewController: [[IdeaCollectionViewController alloc ] init ] animated: YES ];
    
    
    
}


@end

//
//  WisdomViewController.m
//  goldIdea
//
//  Created by dengzheyibu on 2017/4/23.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "WisdomViewController.h"
#import "MainPageViewController.h"
#import "NeiInteractionViewController.h"
#import "WisdomDetailViewController.h"

@interface WisdomViewController ()

@end

@implementation WisdomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"智慧集通";
}


- (IBAction)gotoWisdomCollection:(UIButton *)sender {
    
    WisdomDetailViewController * wisdomCtrl = [[WisdomDetailViewController alloc ] init ];
    [self.navigationController pushViewController: wisdomCtrl animated: YES ];
    
    
    
    
}




- (IBAction)gotoGoldIdea:(UIButton *)sender {
    
    MainPageViewController * mainGoldIdeaCtrl = [[MainPageViewController alloc ] initWithNibName: @"MainPageViewController" bundle: nil ];
    [self.navigationController pushViewController: mainGoldIdeaCtrl animated: YES ];
    
    
    
}






- (IBAction)gotoNeiMengInteraction:(UIButton *)sender {
    
    
    NeiInteractionViewController * neiInteractionCtrl = [[NeiInteractionViewController alloc ] initWithNibName: @"NeiInteractionViewController" bundle: nil ];
    [self.navigationController pushViewController: neiInteractionCtrl animated: YES ];
    
    
    
}






@end

//
//  PostIdeaViewController.m
//  goldIdea
//
//  Created by 邓江洲 on 17/4/16.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "PostIdeaViewController.h"

static CGFloat const vesselPadding = 120;
@interface PostIdeaViewController ()


@property (weak, nonatomic) IBOutlet UIScrollView *basicScrollView;


@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@property (weak, nonatomic) IBOutlet UITextField *departmentTextField;


@property (weak, nonatomic) IBOutlet UITextView *ideaTextView;

@property (weak, nonatomic) IBOutlet UIView *containerView;


@end

@implementation PostIdeaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.containerView.userInteractionEnabled = YES;
    UITapGestureRecognizer * tapEndEditing = [[UITapGestureRecognizer alloc ] initWithTarget: self action: @selector(tapContainerViewEndEditing) ];
    [self.containerView addGestureRecognizer: tapEndEditing ];
}





- (void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter ] addObserver:self selector: @selector(textViewDidBeginEditing:) name:UIKeyboardWillShowNotification object: nil ];
    [[NSNotificationCenter defaultCenter ] addObserver: self selector:@selector(textViewDidEndEditing:) name: UIKeyboardWillHideNotification object: nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter ] removeObserver: self name: UIKeyboardWillShowNotification object: nil ];
    [[NSNotificationCenter defaultCenter ] removeObserver: self name: UIKeyboardWillHideNotification object: nil ];
}




- (IBAction)postIdea:(UIButton *)sender {
    
    
    
    
    
    
    
    
    
    
}






- (void) textViewDidBeginEditing: (UITextView *) textView
{
    
    if([self.ideaTextView isFirstResponder ]){
        [self animateTextField: textView Up: YES ];
    }
    
}

- (void) textViewDidEndEditing: (UITextView *) textView
{
    
    if([self.ideaTextView  isFirstResponder ] ){
        [self animateTextField: textView Up: NO ];
        
    }else if(self.basicScrollView.contentOffset.y ==  vesselPadding ){
        
        [self animateTextField: textView Up: NO ];
    }
}


- (void) animateTextField: (UITextView *) textView Up: (BOOL) isUp
{
    
    CGFloat exePadding = (isUp ? vesselPadding : 0 );
    
    self.basicScrollView.contentOffset = CGPointMake(0, exePadding);
}




- (void)tapContainerViewEndEditing
{
    [self.view endEditing: YES ];
    
}







@end

//
//  WiseCollectionViewCell.m
//  goldIdea
//
//  Created by dengzheyibu on 2017/4/23.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "WiseCollectionViewCell.h"

@interface WiseCollectionViewCell()

@property (nonatomic, strong) UIImageView * photoImageView;
@property (nonatomic, strong) UILabel * wiseTipLabel;


@end


@implementation WiseCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    
    if(self = [super initWithFrame: frame ]){
        _photoImageView = [[UIImageView alloc ] initWithFrame: self.contentView.bounds ];
        [self.contentView addSubview: _photoImageView ];
       // _wiseLabel = [[UILabel alloc ] initWithFrame: CGRectMake( 0, self.contentView.bounds.size.height - 20, self.contentView.bounds.size.width, 20) ];
       // _wiseLabel.textAlignment = NSTextAlignmentLeft;
        //[self.contentView addSubview: _wiseLabel ];
        
        
    }
    
    
    return self;
}

- (void)parsePhotoImageViewWithStr: (NSString *) imageStr
{
    
    
    self.photoImageView.image = [UIImage imageNamed: imageStr ];
   
}
@end

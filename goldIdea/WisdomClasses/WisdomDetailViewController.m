//
//  WisdomViewController.m
//  goldIdea
//
//  Created by dengzheyibu on 2017/4/23.
//  Copyright © 2017年 邓江洲. All rights reserved.
//

#import "WisdomDetailViewController.h"
#import "WiseCollectionViewCell.h"


@interface WisdomDetailViewController ()<UICollectionViewDelegate , UICollectionViewDataSource >

@property (nonatomic, strong) NSArray * neiPicStrs;


@end


static NSString * const wiseCellId = @"neiMengGuCell";

@implementation WisdomDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"智能集通";
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    UICollectionViewFlowLayout * neiMengLayout = [[UICollectionViewFlowLayout alloc ] init ];
    neiMengLayout.itemSize = CGSizeMake(121, 122);
    neiMengLayout.sectionInset = UIEdgeInsetsMake(13, 1, 13, 1);
    neiMengLayout.minimumLineSpacing = 5;
    neiMengLayout.minimumInteritemSpacing = 4;
    UICollectionView * neiCollectionView = [[UICollectionView alloc ] initWithFrame: CGRectMake(0, 64, kScreenWidth, kScreenHeight-64) collectionViewLayout:  neiMengLayout ];
    [neiCollectionView registerClass: [WiseCollectionViewCell class] forCellWithReuseIdentifier: wiseCellId ];
    neiCollectionView.delegate = self;
    neiCollectionView.dataSource = self;
    neiCollectionView.backgroundColor = [UIColor whiteColor ];
    [self.view addSubview: neiCollectionView ];

};





- (NSArray *)neiPicStrs{

    if(!_neiPicStrs){
        NSMutableArray * mutablePicStrs = [[NSMutableArray alloc ] initWithCapacity: 14 ];
        for(NSInteger i = 1; i < 13; i++){
            NSString * tempStr = [NSString stringWithFormat: @"ic_main_item_%02ld.png", i ];
            [mutablePicStrs addObject: tempStr ];
        }
        _neiPicStrs = [mutablePicStrs copy ];
    
    }

    return _neiPicStrs;
}






#pragma mark - collectionView 数据源方法

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.neiPicStrs.count;
    
}



#pragma mark - collectionView 代理方法

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WiseCollectionViewCell * wiseCell = [collectionView dequeueReusableCellWithReuseIdentifier: wiseCellId forIndexPath: indexPath ];
    [wiseCell parsePhotoImageViewWithStr: self.neiPicStrs[indexPath.row]  ];
    return wiseCell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
  
}





@end

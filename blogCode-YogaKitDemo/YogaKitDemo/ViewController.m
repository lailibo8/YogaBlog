//
//  ViewController.m
//  YogaKitDemo
//
//  Created by lining on 2018/4/2.
//  Copyright © 2018年 biubiublue. All rights reserved.
//

#import "ViewController.h"
#import <YogaKit/UIView+Yoga.h>
#import <SDWebImage/UIImageView+WebCache.h>
#import "UIImage+ttet.h"
#import "UIImageView+rrrrrrrr.h"
#import "UIView+ggg.h"
#define kDSL_SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define kDSL_SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
@interface ViewController ()
@property(nonatomic,strong) UIView *backView;
@end

@implementation ViewController

- (void)ddd {
   
    
    
    self.view.backgroundColor = [UIColor grayColor];
    self.backView = [[UIView alloc]init];
    CGFloat x,y,w,h;
    x = 0;
    y = 100;
    w = kDSL_SCREEN_WIDTH;
    h = 100;
    CGRect R_rect = (CGRect){x,y,w,h};
    self.backView.frame = R_rect;
    
    
    
    
    
    
    // 测试图片 url
    NSString *testUrl = @"http://bos.pgzs.com/itunesimg/31/351091731/c2dcc1bc41fa08a3a7ab3877e878b7a1_512x512bb.114x114-75.jpg";
    
    float viewWidth = 57;
    
//    /*** 要设置圆形的 imageview */
//    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.frame = CGRectMake(70, 100, viewWidth, viewWidth);
//    [imageView xf_setCircleHeaderWithUrl:testUrl placeholder:@"icon"];
//    [self.view addSubview:imageView];
//
    /*** 要设置圆角型的 imageview */
    UIView *imageViewTwo = [[UIView alloc] init];
    imageViewTwo.backgroundColor = [UIColor whiteColor];
    imageViewTwo.frame = CGRectMake(150, 100, viewWidth*2, viewWidth);
    [imageViewTwo xf_setPoooingxing4SideHeaderWithUrl:testUrl placeholder:@"icon"];
    [self.view addSubview:imageViewTwo];
    
    /*** 要设置六边形的 imageview */
//    UIImageView *imageViewThree = [[UIImageView alloc] init];
//    imageViewThree.frame = CGRectMake(230, 100, viewWidth, viewWidth);
//    [imageViewThree xf_setSixSideHeaderWithUrl:testUrl placeholder:@"icon"];
//    [self.view addSubview:imageViewThree];
//    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [self dodoTwoViews];
}


-(void)dodoTwoViews
{
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    [self.view configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(self.view.bounds.size.height);
//        layout.alignItems = YGAlignCenter;
    }];
    
    
    UIView *contentView = [[UIView alloc] init];
    [contentView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
//        layout.flexDirection = YGFlexDirectionRow;
//        layout.width = YGPointValue(320);
//        layout.height = YGPointValue(80);
//        layout.marginTop = YGPointValue(40);
//        layout.marginLeft = YGPointValue(10);
    }];
    [self.view addSubview:contentView];
    
    
    
    
    
    UIImageView *imageTopView = [[UIImageView alloc] init];
    
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"WechatIMG16" ofType:@"jpeg"];
    
    UIImage *imageTop = [UIImage imageNamed:@"WechatIMG16.jpeg"];
    
    imageTopView.image = imageTop;
//    [imageTopView setBackgroundColor:[UIColor redColor]];
    [imageTopView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
//        layout.alignItems = YGAlignCenter;
        layout.flexGrow = 1;
//        layout.marginTop = YGPointValue(100);
//        layout.width = YGPointValue(80);
//        layout.height = YGPointValue(40);
        layout.aspectRatio = imageTop.size.width/imageTop.size.height;
    }];
    
    [contentView addSubview:imageTopView];
    
    
    
    UIView *summaryView = [[UIView alloc] init];
    [summaryView setBackgroundColor:[UIColor blueColor]];
    [summaryView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;
//        layout.justifyContent = YGJustifyFlexStart;
        layout.padding = YGPointValue(5);
//        layout.height = YGPointValue(80);
    }];

    [contentView addSubview:summaryView];
//
//
//
//
    UILabel *summaryPopularityLabel = [[UILabel alloc] init];
    summaryPopularityLabel.text = [NSString stringWithFormat:@"*****"];
    summaryPopularityLabel.textColor = [UIColor redColor];
    summaryPopularityLabel.backgroundColor = [UIColor orangeColor];
    [summaryPopularityLabel configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
//        layout.flexGrow = 1;
        layout.width = YGPointValue(60);
    }];

    [summaryView addSubview:summaryPopularityLabel];
//
//
////    UILabel *summaryRightLabel = [[UILabel alloc] init];
////    summaryRightLabel.text = [NSString stringWithFormat:@"////地方撒打发斯蒂芬斯蒂芬打发顺丰达水电费水电费水电费水电费递四方速递"];
////    summaryRightLabel.textAlignment = NSTextAlignmentLeft;
////    summaryRightLabel.textColor = [UIColor redColor];
////    summaryRightLabel.backgroundColor = [UIColor greenColor];
////    [summaryPopularityLabel configureLayoutWithBlock:^(YGLayout * layout) {
////        layout.isEnabled = YES;
////        layout.flexGrow = 1;
//////        layout.width = YGPointValue(200);
////
////    }];
////
////    [summaryView addSubview:summaryRightLabel];
//
//
//
    UIView *summaryInfoView = [[UIView alloc] init];
    [summaryView setBackgroundColor:[UIColor greenColor]];
    [summaryView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.flexGrow = 2;
        layout.justifyContent = YGJustifySpaceBetween;
        layout.flexDirection = YGFlexDirectionRow;
        layout.isEnabled = YES;
        layout.width = YGPointValue(200);
    }];
    [contentView addSubview:summaryInfoView];


    NSArray *showInfoArray = @[@"2010",@"TV-14",@"3Series"];

    for (int i = 0; i<showInfoArray.count; i++) {
        UILabel *label = [[UILabel alloc] init];
        label.text = [showInfoArray objectAtIndex:i];
        label.textColor = [UIColor redColor];
        label.font = [UIFont systemFontOfSize:12];
        [label configureLayoutWithBlock:^(YGLayout * layout) {
            layout.isEnabled = YES;
        }];
        [summaryView addSubview:label];

    }

    
    
    
    
    [self.view.yoga applyLayoutPreservingOrigin:YES];

    
}



-(void)dodoViews
{
    
    [self.view configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(self.view.bounds.size.height);
        layout.alignItems = YGAlignCenter;
    }];
    
    UIView *contentView = [[UIView alloc]init];
    contentView.backgroundColor = [UIColor lightGrayColor];
    [contentView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = true;
        // 4
        layout.flexDirection =  YGFlexDirectionRow;
        layout.width = YGPointValue(320);
        layout.height = YGPointValue(80);
        layout.marginTop = YGPointValue(100);
        
        layout.padding =  YGPointValue(20);//设置了全部子项目的填充值
    }];
    
    UIView *child1 = [[UIView alloc]init];
    child1.backgroundColor = [UIColor redColor];
    [child1 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(80);
        layout.marginRight = YGPointValue(50);
    }];
    
    
    [contentView addSubview:child1];
    
    
    UIView *child2 = [[UIView alloc]init];
    child2.backgroundColor = [UIColor blueColor];
    [child2 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(80);
        layout.flexGrow = 1;
        layout.height = YGPointValue(20);
//        layout.alignSelf = YGAlignCenter;
        layout.flexDirection = YGFlexDirectionRowReverse;
        
    }];
    
    
    [contentView addSubview:child2];
    
    
    [self.view addSubview:contentView];
    
    [self.view.yoga applyLayoutPreservingOrigin:YES];
    
    
}
@end

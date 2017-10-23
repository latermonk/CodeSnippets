//
//  ViewController.m
//  guesture
//
//  Created by wei on 23/10/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong) NSMutableArray* imageList;
@property(nonatomic,assign) NSInteger imageIndex;
@property(nonatomic,strong) UIImageView* imageView;


@end

@implementation ViewController



- (NSMutableArray *)imageList {
    
    if (_imageList == nil) {
        _imageList = [NSMutableArray array];
        for (int i = 0; i < 4; i++) {
            NSString *imageName = [NSString stringWithFormat:@"%d", i];
            UIImage *image = [UIImage imageNamed:imageName];
            [_imageList addObject:image];
        }
    }
    return _imageList;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //创建UIView对象
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 500, 750)];
    imageView.image = self.imageList[0];
    imageView.userInteractionEnabled = YES;
    [self.view addSubview:imageView];
    //滑动手势
    UISwipeGestureRecognizer *swipeRightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    UISwipeGestureRecognizer *swipLeftGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    swipLeftGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [imageView addGestureRecognizer:swipeRightGesture];
    [imageView addGestureRecognizer:swipLeftGesture];
    //初始化imageIndex
    self.imageIndex = 0;
    
    self.imageView = imageView;
    
    
    
}



- (void) swipe: (UISwipeGestureRecognizer *) gesture {
    NSLog(@"%s",__func__);
    NSUInteger totalCount = self.imageList.count;
    if (gesture.direction == UISwipeGestureRecognizerDirectionLeft) {
        if (self.imageIndex >= totalCount -1) return;
        self.imageView.image = self.imageList[++self.imageIndex];
    }else if (gesture.direction == UISwipeGestureRecognizerDirectionRight) {
        if (self.imageIndex <= 0) return;
        self.imageView.image = self.imageList[--self.imageIndex];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

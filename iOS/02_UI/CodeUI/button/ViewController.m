//
//  ViewController.m
//  button
//
//  Created by wei on 17/10/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UILabel *label;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [UILabel new];
    label.text = @"我是测试文字";
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = CGRectMake(0, 50, self.view.frame.size.width, 50);
    self.label = label;
    [self.view addSubview:label];
    
    
    
    UIButton *redBtn = [self creatBtnWithTitle:@"红" selector:@selector(redColor:)];
    redBtn.frame = CGRectMake(0, CGRectGetMaxY(label.frame), 375/3, 50);
    
    UIButton *greenBtn = [self creatBtnWithTitle:@"绿" selector:@selector(greenColor:)];
    greenBtn.frame = CGRectMake(375/3, CGRectGetMaxY(label.frame), 375/3, 50);
    
    UIButton *blueBtn = [self creatBtnWithTitle:@"蓝" selector:@selector(blueColor:)];
    blueBtn.frame = CGRectMake(375/3*2, CGRectGetMaxY(label.frame), 375/3, 50);
    
    
    
    
    
    
}



// 红色按钮的点击事件
- (void)redColor:(id)sender {
    
    self.label.textColor = [UIColor redColor];
}

// 绿色按钮的点击事件
- (void)greenColor:(id)sender {
    
    self.label.textColor = [UIColor greenColor];
}

// 蓝色按钮的点击事件
- (void)blueColor:(id)sender {
    
    self.label.textColor = [UIColor blueColor];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// 封装创建按钮的公共代码
- (UIButton *)creatBtnWithTitle:(NSString *)title selector:(SEL)selector
{
    UIButton *btn = [UIButton new];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    return btn;
}




@end

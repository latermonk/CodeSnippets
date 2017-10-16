//
//  laoSanViewController.m
//  JumpTest
//
//  Created by wei on 16/10/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "laoSanViewController.h"
#import "toNewViewController.h"
#import "ViewController.h"

@interface laoSanViewController ()

@end

@implementation laoSanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.view.backgroundColor = [  UIColor redColor];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        for (UIViewController *controller in self.navigationController.viewControllers)
        {
            if ([controller isKindOfClass:[ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
            }
        }
    }
                   );
    
    
    
 };

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

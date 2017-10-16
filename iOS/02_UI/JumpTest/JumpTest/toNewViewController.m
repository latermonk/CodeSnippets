//
//  toNewViewController.m
//  JumpTest
//
//  Created by wei on 16/10/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "toNewViewController.h"
#import "laoSanViewController.h"

@interface toNewViewController ()

@end

@implementation toNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [ UIColor orangeColor ];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //
        
        laoSanViewController*  san = [[ laoSanViewController alloc ] initWithNibName:@"laoSanViewController" bundle:nil];
        
        [ self.navigationController pushViewController:san animated:YES ];
    });
}

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

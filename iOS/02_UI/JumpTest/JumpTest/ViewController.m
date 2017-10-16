//
//  ViewController.m
//  JumpTest
//
//  Created by wei on 16/10/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "ViewController.h"
#import "toNewViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.view.backgroundColor = [  UIColor greenColor];
    
    
    
    toNewViewController*  tuNiu = [[ toNewViewController alloc ] initWithNibName:@"toNewViewController" bundle:nil];
    
    [ self.navigationController pushViewController:tuNiu animated:YES ];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

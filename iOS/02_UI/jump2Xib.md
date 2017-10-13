# 从初始化界面跳转到 xib 界面



*前提:*

在初始化界面上有 navigationController 才行:

```objective-c
  //Jump
    SecondViewController* myViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    [self.navigationController pushViewController:myViewController animated:YES];
```



```objective-c
 //Jump 延时跳转
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        ThirdViewController* page3 = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
        
        [ self.navigationController pushViewController:page3 animated:nil ];    });
```



跳转到*指定*的控制器界面：

```objective-c
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
```




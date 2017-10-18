#创建导航控制器

**三步：**


* 实例化一个控制器对象作为导航控制器对象的根控制器


* 实例化UINavigationController对象，并指定该导航控制器对象的根控制器rootViewController


* 定制导航栏的显示样式



## 代码展示:

```
UIViewController *navRootVC = [[UIViewController alloc] init];
    navRootVC.view.backgroundColor = [ UIColor yellowColor ];
    navRootVC.title = @"testDemo.com";
    
    UINavigationController *navVC = [[ UINavigationController alloc ] initWithRootViewController:navRootVC];
    
    self.window = [[ UIWindow alloc ] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navVC;
    [ self.window  makeKeyAndVisible];
    
```





![testDemo](/Users/wei/GitHub/CodeSnippets/iOS/02_UI/UINavigationController/CodeMethod/testDemo.jpg)
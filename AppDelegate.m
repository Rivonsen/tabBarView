//
//  AppDelegate.m
//  tabBarView
//
//  Created by pni on 01/11/2018.
//  Copyright © 2018 pniRadiationDetection. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    UITabBarController *myTabBarController=[[UITabBarController alloc] init];
    myTabBarController.title=@"wechat";
    
    mainViewController *mainviewController=[[mainViewController alloc]init];
//    mainviewController.view.backgroundColor=[UIColor blueColor];
//    mainviewController.tabBarItem.title=@"主界面";
//    mainviewController.title=@"Main";
    [myTabBarController addChildViewController:mainviewController];
    
    mainViewController*secondView=[[mainViewController alloc]init];
    secondView.view.backgroundColor=[UIColor redColor];
    secondView.tabBarItem.title=@"second";
    [myTabBarController addChildViewController:secondView];
    
    UINavigationController *myNav=[[UINavigationController alloc]init];
//    [myNav addChildViewController:myTabBarController];
    [myNav pushViewController:myTabBarController animated:YES];
    
    [self.window setRootViewController:myNav];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

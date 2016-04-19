//
//  AppDelegate.m
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIStoryboard* storyboard;
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"user_name"])
    {
        storyboard = [UIStoryboard storyboardWithName:@"Home" bundle:[NSBundle mainBundle]];
        HomeViewController* mainVC = [storyboard instantiateViewControllerWithIdentifier:@"home"];
        
        storyboard = [UIStoryboard storyboardWithName:@"Event" bundle:[NSBundle mainBundle]];
        CustomCalendarViewController* eventVc = [storyboard instantiateViewControllerWithIdentifier:@"event"];
        
        storyboard = [UIStoryboard storyboardWithName:@"Wishlist" bundle:[NSBundle mainBundle]];
        WishlistViewController* wishVc = [storyboard instantiateViewControllerWithIdentifier:@"wish"];

        UITabBarController* tabBarController = [[UITabBarController alloc] init];
        UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
        navigationController.navigationBarHidden = YES;
        [tabBarController setViewControllers:[NSArray arrayWithObjects:mainVC, eventVc, wishVc, nil]];
        
//        [[tabBarController.tabBar.items objectAtIndex:0] setTitle:@"Home"];
//        [[tabBarController.tabBar.items objectAtIndex:1] setTitle:@"Events"];
//        [[tabBarController.tabBar.items objectAtIndex:2] setTitle:@"Wishlist"];

        [[tabBarController.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"Home"]];
        [[tabBarController.tabBar.items objectAtIndex:0] setSelectedImage:[UIImage imageNamed:@"HomeSelected"]];
        [[tabBarController.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"Event"]];
        [[tabBarController.tabBar.items objectAtIndex:1] setSelectedImage:[UIImage imageNamed:@"EventSelected"]];
        [[tabBarController.tabBar.items objectAtIndex:2] setImage:[UIImage imageNamed:@"Wishlist"]];
        [[tabBarController.tabBar.items objectAtIndex:2] setSelectedImage:[UIImage imageNamed:@"WishlistSelected"]];
        
        [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"buttom_bar.png"]];
        //    [[UITabBar appearance] setBackgroundColor:[UIColor colorWithRed:219/255.0 green:252/255.0 blue:255/255.0 alpha:1.0]];

//        [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"buttom_bar.png"]];
//        [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:12.0/255.0 green:86.0/255.0 blue:151.0/255.0 alpha:1.0]} forState:UIControlStateNormal];
//        [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:203.0/255.0 green:0.0/255.0 blue:10.0/255.0 alpha:1.0]} forState:UIControlStateSelected];
        
        [tabBarController setSelectedIndex:0];
        
        self.window.rootViewController = navigationController;
        [self.window makeKeyAndVisible];
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

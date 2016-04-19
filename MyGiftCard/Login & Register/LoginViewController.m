//
//  LoginViewController.m
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _usernameField.delegate = self;
    _passwordField.delegate = self;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Text Field Delegate

- (void) tapped {
    [self.view endEditing:YES];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [textField becomeFirstResponder];
    if (textField.tag == 1) {
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y-45, self.view.frame.size.width, self.view.frame.size.height);
    }
    [UIView commitAnimations];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [textField resignFirstResponder];
    if (textField.tag == 1) {
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+45	, self.view.frame.size.width, self.view.frame.size.height);
    }
    [UIView commitAnimations];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == _usernameField) {
        [_passwordField becomeFirstResponder];
        return YES;
    }
    else {
        [self tapped];
        return NO;
    }
}

#pragma mark - Actions

- (IBAction)forgotPasswordButton:(id)sender {
}

- (IBAction)loginButton:(id)sender {
    UIStoryboard* storyboard;
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
    
    [[tabBarController.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"Home"]];
    [[tabBarController.tabBar.items objectAtIndex:0] setSelectedImage:[UIImage imageNamed:@"HomeSelected"]];
    [[tabBarController.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"Event"]];
    [[tabBarController.tabBar.items objectAtIndex:1] setSelectedImage:[UIImage imageNamed:@"EventSelected"]];
    [[tabBarController.tabBar.items objectAtIndex:2] setImage:[UIImage imageNamed:@"Wishlist"]];
    [[tabBarController.tabBar.items objectAtIndex:2] setSelectedImage:[UIImage imageNamed:@"WishlistSelected"]];
    
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"buttom_bar.png"]];
//    [[UITabBar appearance] setBackgroundColor:[UIColor colorWithRed:219/255.0 green:252/255.0 blue:255/255.0 alpha:1.0]];
    
    [tabBarController setSelectedIndex:0];
    
    [self showViewController:navigationController sender:sender];
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

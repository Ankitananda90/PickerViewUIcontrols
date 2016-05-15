//
//  AppDelegate.m
//  PickerViewUIcontrols
//
//  Created by Ankita on 4/20/16.
//  Copyright © 2016 AnkitaApril. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [UIWindow new];
    self.window.frame = [[UIScreen mainScreen] bounds];
    //CGRect rect = self.window.frame;
    self.window.backgroundColor = [UIColor cyanColor];
    self.window.rootViewController = [UIViewController new];
    [self.window makeKeyAndVisible];
    
    UIDatePicker *datepicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(60, 50, 300, 200)];
    [datepicker setMinimumDate:[NSDate dateWithTimeIntervalSince1970:20*60*60]];
    [datepicker setMaximumDate:[NSDate date]];
    [datepicker setDate:[NSDate dateWithTimeIntervalSinceNow:-30*60*60]];
    [datepicker setDatePickerMode:UIDatePickerModeDateAndTime];
    //[datepicker setDatePickerMode:(UIDatePickerModeCountDownTimer)];
    [self.window addSubview:datepicker];
    
    NSDate *date = datepicker.date;
    NSLog(@"%@", date);

    
    UITextField *txtfield = [[UITextField alloc]init];
    txtfield.frame = CGRectMake(60, 260, 200, 50);
    [txtfield setPlaceholder:@"Enter Username"];
    [txtfield setBackgroundColor:[UIColor whiteColor]];
    [txtfield setKeyboardType:(UIKeyboardTypeAlphabet)];
    [txtfield setReturnKeyType:(UIReturnKeySearch)];
    //txtfield.secureTextEntry = YES;
    txtfield.tag = 100;
    [txtfield becomeFirstResponder];
    [self.window addSubview:txtfield];
    [txtfield setDelegate:self];
    

    UITextField *txtfield2 = [[UITextField alloc]init];
    txtfield2.frame = CGRectMake(60, 320, 200, 50);
    [txtfield2 setPlaceholder:@"Enter Password"];
    [txtfield2 setBackgroundColor:[UIColor whiteColor]];
    [txtfield2 setKeyboardType:(UIKeyboardTypeAlphabet)];
    [txtfield2 setReturnKeyType:(UIReturnKeyGo)];
    txtfield2.secureTextEntry = YES;
    txtfield2.tag = 101;
    //[txtfield2 becomeFirstResponder];
    [self.window addSubview:txtfield2];
    [txtfield2 setDelegate:self];
    
    UITextView *txvw = [[UITextView alloc]init];
    txvw.frame = CGRectMake(60, 380, 300, 100);
    txvw.backgroundColor = [UIColor yellowColor];
    [txvw becomeFirstResponder];
    [txvw setKeyboardType:(UIKeyboardTypeAlphabet)];
    [txvw setTextColor:[UIColor cyanColor]];
    //[txvw setEditable:true];
    [txvw setReturnKeyType:(UIReturnKeyGo)];
    [txvw setDelegate:self];
    [self.window addSubview:txvw];
    

    
    
    // Override point for customization after application launch.
    return YES;
}
-(BOOL) textFieldShouldReturn:(UITextField *)textfield

{
    [textfield resignFirstResponder];
   
    return true;
}

-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([textField tag] == 100)

{
    if ([string length] > 0)
    {
    if ([textField.text length]<= 10)
        
        return true;
       return false;
    }
    return true;

}
    return true;
}





-(BOOL) textViewShouldReturn:(UITextView *)textview

{
    [textview resignFirstResponder];
    
    return true;
}


-(BOOL) textView:(UITextView *)textview shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text

    {
        if ([text length] > 0)
        {
            if ([textview.text length]< 20)
                
                return true;
            else
                {
            
            [textview resignFirstResponder];
            return false;
        }
            }
        return true;
        
    
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

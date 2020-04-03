//
//  ViewController.m
//  KeyChainPractice
//
//  Created by pinyuan on 2020/1/1.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "ViewController.h"
#import "KeyChain.h"

#define KEY_USERNAME @"username"
#define KEY_PASSWORD @"password"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *dicUserInfo = [NSMutableDictionary dictionary];
    [dicUserInfo setObject:@"PinYuan" forKey:KEY_USERNAME];
    [dicUserInfo setObject:@"testPWD123" forKey:KEY_PASSWORD];
    [KeyChain save:@"temp_key" data:dicUserInfo];
    
    NSMutableDictionary *readUsernamePassword = (NSMutableDictionary *)[KeyChain load:@"temp_key"];
    NSString *userName = [readUsernamePassword objectForKey:KEY_USERNAME];
    NSString *password = [readUsernamePassword objectForKey:KEY_PASSWORD];
    
    [KeyChain delete:@"temp_key"];
}


@end

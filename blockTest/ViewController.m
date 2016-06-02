//
//  ViewController.m
//  blockTest
//
//  Created by liushuai on 15-4-11.
//  Copyright (c) 2015年 ftabs. All rights reserved.
//

// changing22

#import "ViewController.h"

@interface ViewController ()
{
    int tmp;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    tmp = 2;

	// test    
    __block int aaa = 5;
    
    void (^block)() = ^{
        
        NSLog(@"a %d",aaa);
    };
    
    
    block();
    
    aaa = 10;
    
    block();
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

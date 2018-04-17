//
//  ViewController.m
//  NSPointerArray
//
//  Created by Наташа on 15.04.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Create pointer array and add 10 objects inside
    NSPointerFunctionsOptions options=(NSPointerFunctionsStrongMemory);
    NSPointerArray *ptrArray=[[NSPointerArray pointerArrayWithOptions: options]retain];
    NSString *s1 = @"String1";
    [ptrArray addPointer:s1];
    NSString *s2 = @"String2";
    [ptrArray addPointer:s2];
    NSString *s3 = @"String1";
    [ptrArray addPointer:s3];
    NSString *s4 = @"String4";
    [ptrArray addPointer:s4];
    NSString *s5 = @"String5";
    [ptrArray addPointer:s5];
    NSString *s6 = @"String6";
    [ptrArray addPointer:s6];
    NSString *s7 = @"String7";
    [ptrArray addPointer:s7];
    NSString *s8 = @"String8";
    [ptrArray addPointer:s8];
    NSString *s9 = @"String9";
    [ptrArray addPointer:s9];
    NSString *s10 = @"String10";
    [ptrArray addPointer:s10];
    
    //Check arrays count
    NSLog(@"%lu",[ptrArray count]); //10
    
    
    //Nil several objects, added to the array and check count once again
    s2 = nil;
    s5 = nil;
    NSLog(@"%lu",[ptrArray count]); //10 again (because NSPointerArray can hold nil values)
    [ptrArray release];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  CreatArray.m
//  AllOfApp
//
//  Created by Nam Titan on 7/15/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "CreatArray.h"

@interface CreatArray ()

@end

@implementation CreatArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* arr1 = [[NSArray alloc] init]; // NSArray* arr1 = [NSArray new];
    NSLog(@"arr1 has %ld elements", arr1.count);
    
    NSArray* arr2 = @[@"apple",@3.14];
    NSLog(@"arr2 has %ld elements", arr2.count);
    NSArray* arr3= [NSArray arrayWithArray:arr2];
    NSLog(@"%p va %p",arr2,arr3);
    NSLog(@"%p va %p",arr2[1],arr3[1]);
    NSArray *arr4 = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle ]pathForResource:@"Data" ofType:@"plist"]];
    NSLog(@"%@",arr4);
    for (NSDictionary* item in arr4) {
        NSLog(@"%@ - %@",item[@"name"],item[@"job"]);
    }
    NSArray *arr5 = [NSArray arrayWithObjects:@1,@2,@3,@4,nil];
    NSLog(@"%@", arr5);
}


@end

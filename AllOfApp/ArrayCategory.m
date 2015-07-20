//
//  Array2.m
//  ObjectExamples
//
//  Created by VuongPC1 on 7/15/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import "ArrayCategory.h"
#import "ArrayCategoryy.h"

@interface ArrayCategory ()
@end

@implementation ArrayCategory

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = @[@"N",@"N",@"A",@"A",@"M",@2,@2,@0,@11,@11,@1999];
     NSLog(@"%@", array);
    NSString* output = [NSString stringWithFormat:@"Before:%@",array];
    [self writeln:output];
    array = [self removeDuplicate:array];
    
    NSLog(@"%@", array);
     NSString* outputStr = [NSString stringWithFormat:@"After:%@",array];
    [self writeln:outputStr];
        
    }


@end

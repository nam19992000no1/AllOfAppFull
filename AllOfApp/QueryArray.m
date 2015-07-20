//
//  QueryArray.m
//  AllOfApp
//
//  Created by Nam Titan on 7/19/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "QueryArray.h"
#import "Student.h"

@interface QueryArray ()

@end

@implementation QueryArray

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *photo = [ UIImage imageNamed:@"logo.png"];
    NSArray *array2 = @[@"ABC",@3.14, photo ];
    if ([array2 containsObject:photo]) {
        NSLog(@"array 2 contains logo");
    }
    Student * a  = [[Student alloc] init:@"John Kim" and:@"01"];
    Student * b  = [[Student alloc] init:@"Jack Ma" and:@"02"];
    Student * c  = [[Student alloc] init:@"James Hall" and:@"03"];
    NSArray* array3 = @[a,b,c];
    Student* x = [[Student alloc] init:@"Jack Ma" and:@"02"];
    NSLog(@"We found Jack Ma at %ld",[array3 indexOfObject:x]);
    
    if ([array3 indexOfObjectIdenticalTo:x]== NSNotFound) {
        NSLog(@"We can't find  Jack Ma");
    } else{
        NSLog(@"We Find Jack Ma");
    }
    Student*temp = [array3 firstObject];
    if (temp == array3[0]) {
        NSLog(@"Same");
    }
    NSUInteger foundIndex = [array3 indexOfObjectPassingTest:^BOOL(id  __nonnull obj, NSUInteger idx, BOOL * __nonnull stop) {
        Student *student = (Student*) obj;
        if ([student.fullName isEqualToString:@"James Halll"]) {
            return true;
        } else {
            return false;
        }
    }];
    if (foundIndex == NSNotFound) {
        NSLog(@"Not Found");
    } else {
    NSLog(@"Found %ld",foundIndex);
    }
}


@end

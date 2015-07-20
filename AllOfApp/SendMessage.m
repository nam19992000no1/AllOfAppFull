//
//  SendMessage.m
//  AllOfApp
//
//  Created by Nam Titan on 7/19/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "SendMessage.h"
#import "Student.h" 

@interface SendMessage ()

@end

@implementation SendMessage

- (void)viewDidLoad {
    [super viewDidLoad];
    Student * a  = [[Student alloc] init:@"John Kim" and:@"01"];
    Student * b  = [[Student alloc] init:@"Jack Ma" and:@"02"];
    Student * c  = [[Student alloc] init:@"James Hall" and:@"03"];
    NSArray* array3 = @[a,b,c,@3.14];
    //[array3 makeObjectsPerformSelector:@selector(sayYourName)];
    [array3 enumerateObjectsUsingBlock:^(id  __nonnull obj, NSUInteger idx, BOOL * __nonnull stop) {
        if ([obj respondsToSelector:@selector(sayYourName)]) {
            [obj sayYourName];
        } else {
            NSLog(@"Object is not student");
        }
    }];
}


@end

//
//  Array2+RemoveDuplicate.m
//  ObjectExamples
//
//  Created by VuongPC1 on 7/15/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import "ArrayCategoryy.h"

@implementation ArrayCategory (RemoveDuplicate)

- (NSArray*)removeDuplicate:(NSArray *)array{

    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:array];
    return [orderedSet array];
}


@end

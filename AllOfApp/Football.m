//
//  Football.m
//  DemoCollection
//
//  Created by Nam Titan on 7/19/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "Football.h"

@implementation Football

- (instancetype) initName: (NSString*) fullName andNumber: (NSNumber*) number andPosition: (NSString*) position {
    if (self = [super init]) {
        self.FullName = fullName;
        self.Number = number;
        self.Position = position;
    }
    return self;
}

- (BOOL) isEqual:(id)object {
    if ([object isMemberOfClass: [Football class]]) {
        Football* temp = (Football*) object;
        if ([self.FullName isEqual:temp.FullName] && [self.Number isEqual:temp.Number] && [self.Position isEqual:temp.Position]) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

@end

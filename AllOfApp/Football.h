//
//  Football.h
//  DemoCollection
//
//  Created by Nam Titan on 7/19/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Football : NSObject
@property (nonatomic, strong) NSString *Number;
@property (nonatomic, strong) NSString *Position;
@property (nonatomic, strong) NSString *FullName;

-(instancetype) initName: (NSString*) fullName andNumber: (NSNumber*) number andPosition: (NSString*) position;
@end

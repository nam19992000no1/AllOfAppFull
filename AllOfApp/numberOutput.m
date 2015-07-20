//
//  numberOutput.m
//  AllOfApp
//
//  Created by Nam Titan on 7/19/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "numberOutput.h"
#define ARRAY_SIZE( array ) sizeof( array ) / sizeof(array[0])
@interface numberOutput ()
@property  NSMutableArray * array;

@end

@implementation numberOutput

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = [[NSMutableArray alloc] init];
    
    int arrayNumberC[] = {10,130,4,5,63,9999};
    
    int d = ARRAY_SIZE(arrayNumberC);
    for (int i = 0; i <d ; i++) {
        
        [self print:arrayNumberC[i]];
    }
    
    NSLog(@" %@", _array);
    //NSString* output = [NSString stringWithFormat:@" %@",_array];
    //[self writeln:output];
    
    
}

- (void) print:(int) num {
    char digit [21][10] = { "", "one", "two", "three", "four", "five", "six", "seven",
        "eight", "nine", "ten", "eleven", "twelve", "thirteen",
        "fourteen", "fifteen", "sixteen", "seventeen", "eighteen",
        "nineteen"};
    char tens [11][10] = { "", "", "twenty", "thirty", "forty", "fifty", "sixty",
        "seventy", "eighty", "ninety"};
    char str[1000] = {0};
    int prev=0, div=1000;
    strcpy(str, "");
    
    while(div) {
        
        if ((num / div) % 10 > 0 || (div == 10 && (num%100) > 0)) {
            
            if (prev) {
                strcat(str, " ");
                prev = 0;
            }
            
            switch(div) {
                case 1000:
                    strcat(str, digit[(num / div) % 10]);
                    strcat(str, " thousand");
                    prev = 1;
                    break;
                case 100:
                    strcat(str, digit[(num / div) % 10]);
                    strcat(str, " hundred");
                    prev = 1;
                    break;
                case 10:
                    if ( (num%100) >= 10 && (num%100) <= 19)
                        strcat(str, digit[num%100]);
                    else {
                        strcat(str, tens[(num%100)/10]);
                        strcat(str, digit[num%10]);
                    }
                    break;
            }
        }
        
        div /= 10;
    }
    printf("%d %s\n", num, str);
    NSString* outputStr = [NSString stringWithFormat:@"%d:%s\n", num, str];
    [self writeln:outputStr];
    
    NSString *string = [[NSString alloc] initWithBytes:str length:sizeof(str) encoding:NSASCIIStringEncoding];
    
    [_array  addObject:string];
    
}
@end

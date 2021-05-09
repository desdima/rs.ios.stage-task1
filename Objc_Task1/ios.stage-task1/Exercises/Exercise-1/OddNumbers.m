//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    int i; //array counter
    int l = 0; //odd numbers counter
    NSInteger count; //count of array elements
    count = [array count];
    
    for (i = 0; i < count; i++)
    {
        long prevPrime = [[array objectAtIndex: i] integerValue];
        if (prevPrime % 2 == 1) {
            l++;
        }
    }
    return l;
}

@end

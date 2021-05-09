#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    int i = 0; //array counter
    NSInteger count; //count of array elements
    NSArray *array = self;
    count = [array count];
    if (count == 0) return nil;
    long num = [[array objectAtIndex: i] integerValue];
    for (i = 1; i < count; i++)
    {
        long prevPrime = [[array objectAtIndex: i] integerValue];
        if (prevPrime < num) {
            num = prevPrime;
        }
    }
    NSNumber* number = @(num);
    return number;
}

@end

#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number == nil) return @[];
    long prevPrime = [number integerValue];
    if (prevPrime < 0) prevPrime = prevPrime * (-1);
    number = @(prevPrime);
    NSString *numstr = [number stringValue];
    const char *str = numstr.UTF8String;
    NSMutableArray *arrstr = [[NSMutableArray alloc] init];
    for (int i = 0; i < strlen(str); i++)
    {
        NSString *s = [NSString stringWithFormat:@"%c", str[i]];
        [arrstr insertObject:s atIndex:i];
        
    }
    
    for (int i = 0; i < strlen(str) / 2; i++) {
        NSString *tmp = arrstr[i];
        [arrstr replaceObjectAtIndex:i withObject:arrstr[strlen(str) - i - 1]];
        [arrstr replaceObjectAtIndex:strlen(str) - i - 1 withObject:tmp];
    }
    
    return arrstr;
}

@end

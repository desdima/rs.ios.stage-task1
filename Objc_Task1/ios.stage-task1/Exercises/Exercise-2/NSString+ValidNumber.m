#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    bool answer = true;
    const char *temp = "0123456789";
    const char *str = self.UTF8String;
    if (strlen(str) == 0) return false;
    for (int i = 0; i < strlen(str); i++)
    {
        if (!strchr(temp,str[i])) return false;
    }
    
    return answer;
}

@end

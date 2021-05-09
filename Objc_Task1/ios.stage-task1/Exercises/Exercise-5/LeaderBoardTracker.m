#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    
    NSMutableArray *rank = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < playerArray.count; i++) {
        int j = 0;
        long i_num = [playerArray[i] integerValue];
        long j_num = [rankedArray[j] integerValue];
        while ((j < rankedArray.count - 1) && (i_num < j_num)) {
            j++;
            j_num = [rankedArray[j] integerValue];
        }
        NSNumber *s = [NSNumber numberWithInt:j + 1];
        [rank insertObject:s atIndex:i];
    }
    
    
    
    
    
    
    
    /*int j = 0;
    [rankArr insertObject:rankedArray[j] atIndex:j];
    for (int i = 1; i < rankedArray.count; i++) {
        if (rankedArray[i] != rankedArray[i-1]) {
            j++;
            [rankArr insertObject:rankedArray[i] atIndex:j];
        }
    }
    
    NSMutableArray *rank = [[NSMutableArray alloc] init];
    for (int i = 0; i < rankArr.count; i++) {
        for (int j = 0; j < playerArray.count; j++)
        {
            if (playerArray[j] > rankArr[i]) {
                NSNumber *s = [NSNumber numberWithInt:i];
                [rank insertObject:s atIndex:j];
            }
        }
    }*/
    return rank;
}

@end

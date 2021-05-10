#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    
    //NSMutableArray *rank = [[NSMutableArray alloc] init];
    
    NSMutableArray *rankRes = [[NSMutableArray alloc] init];
    for (int i = 0; i < playerArray.count; i++) {
        long i_num = [playerArray[i] integerValue];
        NSMutableArray *rank = [rankedArray mutableCopy];
       
        
        [rank insertObject:playerArray[i] atIndex:rank.count];
        
        NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"self" ascending:NO];
        NSArray *descriptors = [NSArray arrayWithObject: descriptor];
        NSArray *reverseOrder = [rank sortedArrayUsingDescriptors:descriptors];
        
        long rankIndex = 0;
        long j = 0;
        long j_num = [reverseOrder[0] integerValue];
        while (i_num != j_num) {
            j++;
            j_num = [reverseOrder[j] integerValue];
            if (j_num != [reverseOrder[j - 1] integerValue]) rankIndex++;
        }
        
        NSNumber *s = [NSNumber numberWithLong:rankIndex + 1];
        [rankRes insertObject:s atIndex:i];
        
        /*
        while (i_num <= j_num) {
            j_num = [rank[j] integerValue];
            if (j != rank.count - 1) {
                j++;
            }
            else {
                i_num = j_num;
            }
        }
        rankIndex = j;
        //[rank insertObject:playerArray[i] atIndex:index];
        NSNumber *s = [NSNumber numberWithLong:rankIndex];
        [rankRes insertObject:s atIndex:i];*/
    }
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    for (int i = 0; i < playerArray.count; i++) {
        int j = 0;
        long i_num = [playerArray[i] integerValue];
        long j_num = [rankedArray[j] integerValue];
        //while ((j < rankedArray.count - 1) && (i_num < j_num)) {
          //  j++;
            //j_num = [rankedArray[j] integerValue];
        //}
        
        if ((i_num >= j_num) || (j == rankedArray.count - 1)) {
            NSNumber *s = [NSNumber numberWithInt:j + 1];
            [rank insertObject:s atIndex:i];
        }
        else {
            j++;
            j_num = [rankedArray[j] integerValue];
        }
        
    }*/
    
    
    //------------------
    
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
    return rankRes;
}

@end

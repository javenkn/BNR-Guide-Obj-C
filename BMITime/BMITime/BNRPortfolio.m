//
//  BNRPortfolio.m
//  BMITime
//
//  Created by J on 4/17/22.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio() {
    NSMutableArray *_holdings;
}
@end

@implementation BNRPortfolio

- (void)addStockHolding:(BNRStockHolding *)stockHolding {
    // Is assets nil?
    if (!_holdings) {
        // Create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:stockHolding];
}

- (void)removeStockHolding:(BNRStockHolding *)stockHolding {
    if ([_holdings indexOfObject:stockHolding] != NSNotFound) {
        [_holdings removeObject:stockHolding];
    }
}

- (float)totalValue {
    float sum = 0.0;
    for(BNRStockHolding *stockHolding in _holdings) {
        sum += [stockHolding valueInDollars];
    }
    return sum;
}

@end

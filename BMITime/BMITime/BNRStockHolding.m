//
//  BNRStockHolding.m
//  BMITime
//
//  Created by J on 3/26/22.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)currentSharePrice {
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)cSPrice {
    _currentSharePrice = cSPrice;
}

- (float)purchaseSharePrice {
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)pSPrice {
    _purchaseSharePrice = pSPrice;
}

- (int)numberOfShares {
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)num {
    _numberOfShares = num;
}

- (float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

@end

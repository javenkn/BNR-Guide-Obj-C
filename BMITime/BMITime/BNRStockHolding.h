//
//  BNRStockHolding.h
//  BMITime
//
//  Created by J on 3/26/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject {
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)pSPrice;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)cSPrice;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)num;

- (float)costInDollars;
- (float)valueInDollars;

@end

NS_ASSUME_NONNULL_END

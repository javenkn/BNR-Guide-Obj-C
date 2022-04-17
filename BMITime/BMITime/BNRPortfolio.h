//
//  BNRPortfolio.h
//  BMITime
//
//  Created by J on 4/17/22.
//

#import <Foundation/Foundation.h>

@class BNRStockHolding;

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject {
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

- (void)addStockHolding:(BNRStockHolding *)stockHolding;
- (float)totalValue;

@end

NS_ASSUME_NONNULL_END

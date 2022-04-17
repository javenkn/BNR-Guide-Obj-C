//
//  BNRForeignStockHolding.h
//  BMITime
//
//  Created by J on 4/17/22.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end

NS_ASSUME_NONNULL_END

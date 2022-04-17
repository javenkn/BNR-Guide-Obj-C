//
//  BNRForeignStockHolding.m
//  BMITime
//
//  Created by J on 4/17/22.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
    return [super costInDollars] * _conversionRate;
}

- (float)valueInDollars {
    return [super valueInDollars] * _conversionRate;
}

@end

//
//  BNREmployee.h
//  BMITime
//
//  Created by J on 4/17/22.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END

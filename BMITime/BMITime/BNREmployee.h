//
//  BNREmployee.h
//  BMITime
//
//  Created by J on 4/17/22.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;

@end

NS_ASSUME_NONNULL_END

//
//  BNREmployee.m
//  BMITime
//
//  Created by J on 4/17/22.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment {
    if(self.hireDate) {
        // NSTimeInterval is the same as a double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:_hireDate];
        return secs/31557600.0; // Seconds per year
    } else {
        return 0;
    }
}

- (float)bodyMassIndex {
    float bmi = [super bodyMassIndex];
    return bmi * .9;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end

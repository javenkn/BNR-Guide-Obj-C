//
//  BNREmployee.m
//  BMITime
//
//  Created by J on 4/17/22.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
    // Is assets nil?
    if (!_assets) {
        // Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (void)removeAsset:(BNRAsset *)a {
    if(_assets.count < 1) {
        return;
    }
    [_assets removeObject:a];
}

- (unsigned int)valueOfAssets {
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
    
}

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
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
                                             _employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end

//
//  BNRAsset.m
//  BMITime
//
//  Created by J on 4/17/22.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    // Is holder non-nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end

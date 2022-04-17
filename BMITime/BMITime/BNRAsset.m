//
//  BNRAsset.m
//  BMITime
//
//  Created by J on 4/17/22.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u", _label, _resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end

//
//  BNRPerson.m
//  BMITime
//
//  Created by J on 3/26/22.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float) bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end

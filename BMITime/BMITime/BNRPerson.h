//
//  BNRPerson.h
//  BMITime
//
//  Created by J on 3/26/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END

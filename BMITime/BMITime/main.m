//
//  main.m
//  BMITime
//
//  Created by J on 3/26/22.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // Create an instance of BNRPerson
//        BNRPerson *mikey = [[BNRPerson alloc] init];
//
//        // Give the instance variables interesting values using setters
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
//
//        // Log the instance variables using the getters
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
//        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
//
//        // Log some values using custom methods
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"mikey has a BMI of %f", bmi);
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        
        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        
        [stocks addObject:stock1];
        [stocks addObject:stock2];
        [stocks addObject:stock3];
        
        for(BNRStockHolding *stock in stocks) {
            NSLog(@"Value of stock: %f", [stock valueInDollars]);
        }

    }
    return 0;
}

//
//  main.m
//  BMITime
//
//  Created by J on 3/26/22.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRPerson.h"
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRAsset.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // Create an instance of BNRPerson
//        BNRPerson *mikey = [[BNRPerson alloc] init];
//
//        // Give the instance variables interesting values using setters
//        mikey.weightInKilos = 96;
//        mikey.heightInMeters = 1.8;
//
//        // Log the instance variables using the getters
//        float height = mikey.heightInMeters;
//        int weight = mikey.weightInKilos;
//        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
//
//        // Log some values using custom methods
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"mikey has a BMI of %f", bmi);
        
//        // Ch. 18 Challenge
//        NSMutableArray *stocks = [[NSMutableArray alloc] init];
//        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
//        [stock1 setPurchaseSharePrice:2.30];
//        [stock1 setCurrentSharePrice:4.50];
//        [stock1 setNumberOfShares:40];
//
//        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
//        [stock2 setPurchaseSharePrice:12.19];
//        [stock2 setCurrentSharePrice:10.56];
//        [stock2 setNumberOfShares:90];
//
//        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
//        [stock3 setPurchaseSharePrice:45.10];
//        [stock3 setCurrentSharePrice:49.51];
//        [stock3 setNumberOfShares:210];
//
//        [stocks addObject:stock1];
//        [stocks addObject:stock2];
//        [stocks addObject:stock3];
//
//        for(BNRStockHolding *stock in stocks) {
//            NSLog(@"Value of stock: %f", [stock valueInDollars]);
//        }
        
//        // Ch. 20 - Inheritance
//        // Create an instance of BNREmployee
//        BNREmployee *mikey = [[BNREmployee alloc] init];
//
//        // Give the instance variables interesting values using setters
//        mikey.weightInKilos = 96;
//        mikey.heightInMeters = 1.8;
//        mikey.employeeID = 12;
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//        mikey.hireDate = [dateFormatter dateFromString:@"2010-08-02"];
//
//        // Log the instance variables using the getters
//        NSLog(@"mikey has a weight of %d", mikey.weightInKilos);
//        NSLog(@"mikey has a height of %f", mikey.heightInMeters);
//        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);
//
//        // Log some values using custom methods
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"mikey has a BMI of %f", bmi);
//        double years = [mikey yearsOfEmployment];
//        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
//
//        // Ch. 20 Challenge
//        NSMutableArray *stocks = [[NSMutableArray alloc] init];
//        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
//        [stock1 setPurchaseSharePrice:2.30];
//        [stock1 setCurrentSharePrice:4.50];
//        [stock1 setNumberOfShares:40];
//
//        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
//        [stock2 setPurchaseSharePrice:12.19];
//        [stock2 setCurrentSharePrice:10.56];
//        [stock2 setNumberOfShares:90];
//
//        BNRForeignStockHolding *stock3 = [[BNRForeignStockHolding alloc] init];
//        [stock3 setPurchaseSharePrice:2.30];
//        [stock3 setCurrentSharePrice:4.50];
//        [stock3 setNumberOfShares:40];
//        stock3.conversionRate = 0.94;
//
//        [stocks addObject:stock1];
//        [stocks addObject:stock2];
//        [stocks addObject:stock3];
//
//        for(BNRStockHolding *stock in stocks) {
//            NSLog(@"Value of stock: %f", [stock valueInDollars]);
//        }
        
        // Ch.21 Object Instance Variables and Properties
        // Create an array of BNREmployees objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];

        for(int i = 0; i < 10; i++) {
            // Create an instance of BNREmployee
            BNREmployee *employee = [[BNREmployee alloc] init];

            // Give the instance variables interesting values
            employee.weightInKilos = 90 + i;
            employee.heightInMeters = 1.8 - i/10.0;
            employee.employeeID = i;

            // Put the employee in the employees array
            [employees addObject:employee];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];

        // Create 10 assets
        for(int i = 0; i < 10; i++) {
            // Create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
            // Challenge 2
            if(randomEmployee.assets.count > 1) {
                [randomEmployee removeAsset:asset];
            }
            
            [allAssets addObject:asset];
        }

        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"Giving up ownership of arrays");
        allAssets = nil;
        employees = nil;
        
//        // Ch. 21 - Object Instance Variables and Properties Challenge
//        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
//        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
//        [stock1 setPurchaseSharePrice:2.30];
//        [stock1 setCurrentSharePrice:4.50];
//        [stock1 setNumberOfShares:40];
//        stock1.symbol = @"XYZ";
//
//        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
//        [stock2 setPurchaseSharePrice:12.19];
//        [stock2 setCurrentSharePrice:10.56];
//        [stock2 setNumberOfShares:90];
//        stock2.symbol = @"ABC";
//
//        BNRForeignStockHolding *stock3 = [[BNRForeignStockHolding alloc] init];
//        [stock3 setPurchaseSharePrice:2.30];
//        [stock3 setCurrentSharePrice:4.50];
//        [stock3 setNumberOfShares:40];
//        stock3.conversionRate = 0.94;
//        stock3.symbol = @"LMN";
//
//        [portfolio addStockHolding:stock1];
//        [portfolio addStockHolding:stock2];
//        [portfolio addStockHolding:stock3];
//
//        for(BNRStockHolding *stock in portfolio.holdings) {
//            NSLog(@"Value of stock %@: %f", stock.symbol, [stock valueInDollars]);
//        }
//
//        NSLog(@"Total value of portfolio: %f", portfolio.totalValue);
    }
    sleep(100);
    return 0;
}

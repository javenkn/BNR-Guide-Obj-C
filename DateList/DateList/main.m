//
//  main.m
//  DateList
//
//  Created by J on 3/19/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create three NSDate objects
//       NSDate *now = [NSDate date];
//       NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
//       NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
//       // Create an array containing all three
////       NSArray *dateList = @[now, tomorrow, yesterday];
//        NSMutableArray *dateList = [NSMutableArray array];
//
//        // Add two dates to the array
//        [dateList addObject:now];
//        [dateList addObject:tomorrow];
//
//        // Add yesterday at the beginning of the list
//        [dateList insertObject:yesterday atIndex:0];
//
//        // Print a couple of dates
//        NSLog(@"The first date is %@", dateList[0]);
//        NSLog(@"The third date is %@", dateList[2]);
//        // How many dates are in the array?
//        NSLog(@"There are %lu dates", [dateList count]);
//
//        // Iterate over the array
////        NSUInteger dateCount = [dateList count];
////        for(int i = 0; i < dateCount; i++) {
////            NSDate *d = dateList[i];
////            NSLog(@"Here is a date: %@", d);
////        }
//        for(NSDate *d in dateList) {
//            NSLog(@"Here is a date: %@", d);
//        }
//
//        // Remove yesterday
//        [dateList removeObjectAtIndex:0];
//        NSLog(@"Now the first date is %@", dateList[0]);
//
//        // Challenge: Groceries
//        NSMutableArray *groceries = [NSMutableArray array];
//        [groceries addObject:@"Loaf of bread"];
//        [groceries addObject:@"Container of milk"];
//        [groceries addObject:@"Stick of butter"];
//
//        for(NSString *g in groceries) {
//            NSLog(@"Buy a %@", g);
//        }
//
        // Challenge: Interesting Names
        // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString =
                    [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                              encoding:NSUTF8StringEncoding
                                                 error:NULL];
        // Break it into an array of strings
//        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *names = @[@"Wilson",
                           @"Win",
                           @"Winnie",
                           @"Winston",
                           @"Wolf",
                           @"Wolfgang",
                           @"Woody",
                           @"Yvonne"];
        NSArray *words = @[@"woldy",
                           @"woldy",
                           @"Wolf",
                           @"wolf",
                           @"wolfachite",
                           @"wolfberry",
                           @"wolfdom",
                           @"wolfen",
                           @"wolfer",
                           @"Wolffia",
                           @"Wolffian",
                           @"Wolffianism",
                           @"Wolfgang",
                           @"wolfhood"];
//        // Go through the array one string at a time
//        for (NSString *n in names) {
//            // Look for the string "aa" in a case-insensitive manner
//            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
//            // Was it found?
//            if (r.location != NSNotFound) {
//                NSLog(@"%@", n);
//            }
//        }
        for(NSString *n in names) {
            if([words containsObject:n]) {
                NSLog(@"Pair found: %@", n);
            }
        }
    }
    return 0;
}

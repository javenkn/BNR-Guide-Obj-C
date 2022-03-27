//
//  main.c
//  BMICalc
//
//  Created by J on 3/12/22.
//

#include <stdio.h>
#include <time.h>

// Here is the declaration of the struct
//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//};
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

void timeIn4MillionSec(void) {
    long fourMillionSecsFromNow = time(NULL) + 4000000;
    printf("Four million seconds from now: %ld\n", fourMillionSecsFromNow);
    
    struct tm now;
    localtime_r(&fourMillionSecsFromNow, &now);
//    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    printf("The date will be %d-%d-%d\n", now.tm_mon+1, now.tm_mday, now.tm_year+1900);
    
}

int main(int argc, const char * argv[]) {
    
//    struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
//    struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
//    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
//    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
//    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
//    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("Mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("Aaron has a BMI of %.2f\n", bmi);
    
    timeIn4MillionSec();
    
    return 0;
}

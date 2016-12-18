//
//  Healer.m
//  DZ9Delegate
//
//  Created by Vasilii on 18.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import "Healer.h"
#import "Patient.h"

@implementation Healer

#pragma mark - PatientDelegate
// реализуем метод протокола на который подписан лекарь
-(void) patientFeelsBad: (Patient*) patient {
    NSLog(@"Patient %@ feels bad", patient.name);
    if ((patient.temperature >= 37.0 && patient.temperature <= 39.0) || (patient.pulse >= 80 && patient.pulse <= 90)){
        [patient drinkEssence];
    } else if (patient.temperature > 39 || patient.pulse > 90) {
        [patient drinkEssence];
    } else {
        NSLog(@"Patient %@ should rest", patient.name);
    }
}


@end

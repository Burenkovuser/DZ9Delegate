//
//  Doctor.m
//  DZ9Delegate
//
//  Created by Vasilii on 16.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"//имопортируем

@implementation Doctor

#pragma mark - PatientDelegate
// реализуем метод протокола на который подписан доктор
-(void) patientFeelsBad: (Patient*) patient {
    NSLog(@"Patient %@ feels bad", patient.name);
    if ((patient.temperature >= 37.0 && patient.temperature <= 39.0) || (patient.pulse >= 80 && patient.pulse <= 90)){
    [patient takePill];
    } else if (patient.temperature > 39 || patient.pulse > 90) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should rest", patient.name);
    }
}
    @end

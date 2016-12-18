//
//  Patient.m
//  DZ9Delegate
//
//  Created by Vasilii on 16.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import "Patient.h"

// реализуем методы класса
@implementation Patient

-(BOOL) howAreYou {
    BOOL iFellGood = arc4random() % 2;
    if (!iFellGood) {
        [self.delegate patientFeelsBad: self];
    }
    return iFellGood;
}

-(void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}
-(void) makeShot {
    NSLog(@"%@ make a shot", self.name);
}
-(void) drinkEssence {
    NSLog(@"%@ drink a medical essence", self.name);
}
-(void) drinkElixir {
    NSLog(@"%@ make a medical elixir", self.name);
}

@end

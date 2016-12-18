//
//  Doctor.h
//  DZ9Delegate
//
//  Created by Vasilii on 16.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h" //импортируем

@protocol PatientDelegate;

//подписываем на протокол
@interface Doctor : NSObject <PatientDelegate>

@end

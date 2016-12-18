//
//  Healer.h
//  DZ9Delegate
//
//  Created by Vasilii on 18.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
//подписывваем под протокол и импортируем
@interface Healer : NSObject<PatientDelegate>

@end

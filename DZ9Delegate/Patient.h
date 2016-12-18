//
//  Patient.h
//  DZ9Delegate
//
//  Created by Vasilii on 16.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

//объявляем протокол
@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) float temperature;
@property (assign, nonatomic) NSInteger pulse;
//создаем проперти на делегата доктора (свойства ссылка на делегат) Любой класс поэтому id вместо доктора можно писать delegate
@property(weak,nonatomic) id <PatientDelegate> delegate;

-(BOOL) howAreYou;
-(void) takePill;
-(void) makeShot;
-(void) drinkEssence;
-(void) drinkElixir;



@end

// объявляем протокол и его методы
@protocol PatientDelegate <NSObject>

-(void) patientFeelsBad:(Patient*) patient;


@end

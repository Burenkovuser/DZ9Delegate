//
//  AppDelegate.m
//  DZ9Delegate
//
//  Created by Vasilii on 16.12.16.
//  Copyright © 2016 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "Healer.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Patient *patient1 = [[Patient alloc] init];
    patient1.name = @"Alex";
    patient1.temperature = 36.6;
    patient1.pulse = 64;
    
    Patient *patient2 = [[Patient alloc] init];
    patient2.name = @"Olga";
    patient2.temperature = 37.2;
    patient2.pulse = 72;
    
    Patient *patient3 = [[Patient alloc] init];
    patient3.name = @"Bob";
    patient3.temperature = 36.8;
    patient3.pulse = 84;
    
    Patient *patient4 = [[Patient alloc] init];
    patient4.name = @"Ivan";
    patient4.temperature = 36.9;
    patient4.pulse = 67;
    
    Patient *patient5 = [[Patient alloc] init];
    patient5.name = @"Света";
    patient5.temperature = 39.9;
    patient5.pulse = 72;
    
    Patient *patient6 = [[Patient alloc] init];
    patient6.name = @"Ирина";
    patient6.temperature = 38.9;
    patient6.pulse = 67;
    
    Patient *patient7 = [[Patient alloc] init];
    patient7.name = @"Богдан";
    patient7.temperature = 36.9;
    patient7.pulse = 84;
    
    Patient *patient8 = [[Patient alloc] init];
    patient8.name = @"Казимир";
    patient8.temperature = 36.9;
    patient8.pulse = 89;
    
    Doctor *doctor = [[Doctor alloc] init];
    Healer *healer = [[Healer alloc] init];
    
    // доктор является делегато delegate от @property(weak,nonatomic) id <PatientDelegate> delegate;
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = doctor;
    patient4.delegate = doctor;
    patient5.delegate = healer;
    patient6.delegate = healer;
    patient7.delegate = healer;
    patient8.delegate = healer;
    
    
    NSArray *patients = [NSArray arrayWithObjects: patient1, patient2, patient3, patient4, patient5, patient6, patient7, patient8,nil];
    
    for (id patient in patients) {
         [patient setDelegate: doctor];
        //используем тернарный оператор
        NSLog(@" %@ are you okey? %@", [patient name], [patient howAreYou] ? @"Yes" : @"No" );
}
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

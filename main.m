/*
    main.mm
    The module represents advanced words part of the shuffle game from the TOEFL Magoosh Application.

    Sandbox4

    Created by alimovlex.
    Copyright (c) 2022 alimovlex. All rights reserved.
*/
#import <Foundation/Foundation.h>
#import <basics.h>
#import "sandbox.h"
#import "structures.h"
#import "complex_numbers.h"
#import "polymorphism.h"
#import <dispatch/dispatch.h>
#import <pthread.h>

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

//----------------------------------------------------------------MAIN FUNCTION


void timer_did_fire(void *context) {
    printf("Strawberry fields \n");
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    if( argc == 2 )
    {
        ALog(@"The argument supplied is %s\n", argv[1]);
    }
    else if( argc > 2 )
    {
        ALog(@"Too many arguments supplied.\n");
    }
    else
    {
        ALog(@"One argument expected.\n");
    }

    sandboxCLang();

    dispatch_source_t timer = dispatch_source_create(
            DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_global_queue(NSQualityOfServiceBackground, 0));

    dispatch_source_set_event_handler_f(timer, timer_did_fire);
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC,
                              0.5 * NSEC_PER_SEC);
    dispatch_resume(timer);
    dispatch_main();


    [pool drain];
    return 0;
}

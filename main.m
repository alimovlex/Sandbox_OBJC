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
#import <pthread.h>
//----------------------------------------------------------------MAIN FUNCTION
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    basicsTest();
    sandboxCLang();
    structuresTest();
    complexNumbersTest();
    polymorphismTest();

    if( argc == 2 )
    {
        NSLog(@"The argument supplied is %s\n", argv[1]);
    }
    else if( argc > 2 )
    {
        NSLog(@"Too many arguments supplied.\n");
    }
    else
    {
        NSLog(@"One argument expected.\n");
    }
    [pool drain];
    return 0;
}

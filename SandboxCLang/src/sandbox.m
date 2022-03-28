/*
    sandbox.m
    The module represents Objective-C sandbox.
    This was taken from Steve Kochan's book.

    Sandbox4

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/
#import "sandbox.h"
#import "basics.h"
#import "complex_numbers.h"
#import "polymorphism.h"
#import "structures.h"
@implementation Sandbox;

@end

void sandboxCLang()
{
    basicsTest();
    complexNumbersTest();
    polymorphismTest();
    structuresTest();
}

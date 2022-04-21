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
#import "TCP_Channel.h"
#import <dispatch/dispatch.h>
#import <pthread.h>

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

//----------------------------------------------------------------MAIN FUNCTION


void timer_did_fire(void *context) {
    printf("Strawberry fields \n");
}

void tcpConnect() {
    TCP_Channel *tcpCommunicator  = [[TCP_Channel alloc] init];
    if ([tcpCommunicator connectToHost:@"192.168.0.101" onPort:2020 withSSL:NO]) {
        NSString *banner = [tcpCommunicator readLine];
        [tcpCommunicator write: @"EHLO some.host.com\r\n"];
    }
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    //sandboxCLang();

    pthread_t t0;
    if (pthread_create(&t0,NULL, tcpConnect  ,NULL)==-1) {
        perror("Unable to create a thread for tcpConnect function\n");
    } else {
        printf("Connection initialization successful!");
    }

    /*
    const char *greeting = "Hello";
    void (^speak)() = ^(char *x) {
        printf("%s %s\n", greeting, x);
    };

    speak("World");
    */
    dispatch_queue_t main_q = dispatch_get_main_queue();
    dispatch_queue_global_t global_t = dispatch_get_global_queue(NSQualityOfServiceBackground, 0);

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

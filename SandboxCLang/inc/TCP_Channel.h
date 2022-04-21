/*
    TCP_Channel.m
    The module represents Objective-C TCP connection class.
    This was taken from Steve Kochan's book.

    Sandbox4

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/
#import <Foundation/Foundation.h>
#include "ssocket.h"

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface TCP_Channel: NSObject {
    ssocket *sock;

    NSMutableString *buffer;
    char *scrap;
}

- (BOOL) connectToHost: (NSString *) hostname onPort: (int) port withSSL: (BOOL) doSSL;

- (NSString *) readLine;
- (void) write: (NSString *) message;

@end


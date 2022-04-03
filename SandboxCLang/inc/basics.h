//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface BinClass:NSObject
/* method declaration */
- (void) arrayTest;
- (void) stringTest;
@end

void basicsTest();


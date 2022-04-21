//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@class Complex; //equal to #import Complex.h / allows to use the Complex class

@interface Sandbox: NSObject

@end

void sandboxCLang();




//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

struct Books 
{
   NSString *title;
   NSString *author;
   NSString *subject;
   int   book_id;
};
@interface SampleClass:NSObject
/* method declaration */
- (void)swap:(int *)num1 andNum2:(int *)num2;
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
- (void) printBook:( struct Books) book ;
- (void) structure;
@end

void structuresTest();



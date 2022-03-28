//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
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



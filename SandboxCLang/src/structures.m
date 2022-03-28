/*
    structures.m
    The module represents demo functions on structures and algorithms.
    This was taken from Steve Kochan's book.

    Sandbox4

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/
#import "structures.h"

@implementation SampleClass

- (void)swap:(int *)num1 andNum2:(int *)num2 
{
   int temp;
   temp = *num1;     /* save the value of num1 */
   *num1 = *num2;    /* put num2 into num1 */
   *num2 = temp;     /* put temp into num2 */
   return;
}
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b 
{
   float number1 = [a floatValue];
   float number2 = [b floatValue];
   float product = number1 * number2;
   NSNumber *result = [NSNumber numberWithFloat:product];
   return result;
}

- (void) structure
{
   struct Books Book1;        /* Declare Book1 of type Book */
   struct Books Book2;        /* Declare Book2 of type Book */
 
   /* book 1 specification */
   Book1.title = @"Objective-C Programming";
   Book1.author = @"Nuha Ali"; 
   Book1.subject = @"Objective-C Programming Tutorial";
   Book1.book_id = 6495407;

   /* book 2 specification */
   Book2.title = @"Telecom Billing";
   Book2.author = @"Zara Ali";
   Book2.subject = @"Telecom Billing Tutorial";
   Book2.book_id = 6495700;
 
   /* print Book1 info */
   NSLog(@"Book 1 title : %@\n", Book1.title);
   NSLog(@"Book 1 author : %@\n", Book1.author);
   NSLog(@"Book 1 subject : %@\n", Book1.subject);
   NSLog(@"Book 1 book_id : %d\n", Book1.book_id);

   /* print Book2 info */
   NSLog(@"Book 2 title : %@\n", Book2.title);
   NSLog(@"Book 2 author : %@\n", Book2.author);
   NSLog(@"Book 2 subject : %@\n", Book2.subject);
   NSLog(@"Book 2 book_id : %d\n", Book2.book_id);
}

- (void) printBook:( struct Books) book 
{
   NSLog(@"Book title : %@\n", book.title);
   NSLog(@"Book author : %@\n", book.author);
   NSLog(@"Book subject : %@\n", book.subject);
   NSLog(@"Book book_id : %d\n", book.book_id);
}
@end

void structuresTest()
{
    int x=2,y=4;
    NSDate *date= [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];   
    NSString *dateString = [dateFormatter stringFromDate:date];
    SampleClass *sampleClass = [[SampleClass alloc]init];
    NSLog(@"Before swap : %d\t%d \n",x,y);
    [sampleClass swap:&x andNum2:&y];
    NSLog(@"Values after swap : %d\t%d \n",x,y);
    NSNumber *a = [NSNumber numberWithFloat:10.5];
    NSNumber *b = [NSNumber numberWithFloat:10.0];   
    NSNumber *result = [sampleClass multiplyA:a withB:b];
    NSString *resultString = [result stringValue];
    NSLog(@"The product of multiplication of 10.0 and 10.5 is: %@",resultString);
    NSLog(@"Current date is %@",dateString);
    NSDate *newDate = [dateFormatter dateFromString:dateString];
    NSLog(@"NewDate: %@",newDate);
    [sampleClass dealloc];
    [dateFormatter dealloc];
}










/*
    basics.m
    The module represents demo functions on basic data types.
    This was taken from Steve Kochan's book.

    Sandbox4

    Created by alimovlex.
    Copyright (c) 2020 alimovlex. All rights reserved.
*/
#import "basics.h"
@implementation BinClass
- (void) arrayTest
{
srand((unsigned)time(NULL));
NSInteger n[2][2];
int a[2];   
   int i,j;        
   for ( i = 0; i < 2; i++ ) 
   {
   a[i] = rand()%10;
   for ( j = 0; j < 2; j++)
   {
      n[i][j] = rand()%10;    
      NSLog(@"a[%d][%d] = %d\t", i,j, n[i][j] );
    }
   NSLog(@"Element[%d] = %d\n", i, a[i] );
   }
}

- (void) stringTest
{
   NSString *str1 = @"Hello";
   NSString *str2 = @"World";
   NSString *str3;
   int  len ;
   /* uppercase string */
   str3 = [str2 uppercaseString];
   NSLog(@"Uppercase String :  %@\n", str3 );

   /* concatenates str1 and str2 */
   str3 = [str1 stringByAppendingFormat:@"World"];
   NSLog(@"Concatenated string:   %@\n", str3 );

   /* total length of str3 after concatenation */
   len = [str3 length];
   NSLog(@"Length of Str3 :  %d\n", len );

   /* InitWithFormat */
   str3 = [[NSString alloc] initWithFormat:@"%@ %@",str1,str2];	
   NSLog(@"Using initWithFormat:   %@\n", str3 );
   
}
@end

void basicsTest()
{
 BinClass *binClass;
 binClass = [BinClass alloc];
 binClass = [binClass init];
 [binClass arrayTest];
 [binClass stringTest];
 [binClass dealloc];
}

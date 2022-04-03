//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface Complex: NSObject
{
      @private
      double real, imaginary;
}
@property double real, imaginary;
/**
 * Displays in the format: a + bi
 */
- (void) print;

/**
 * Sets both real and imaginary values
 */
- (void) setReal:(double) r setImaginary:(double) i;

/**
 * Adds two complex numbers
 * @Complex* {[complexNum]} the complex number to add
 */
- (Complex*) add:(Complex*) complexNum;

@end
void complexNumbersTest();

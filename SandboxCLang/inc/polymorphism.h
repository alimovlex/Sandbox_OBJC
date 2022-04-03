//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface Shape : NSObject 
{
   @protected
   CGFloat area;
}

- (void)printArea;
- (void)calculateArea;
@end

@interface Square : Shape 
{
   CGFloat length;
}

- (id)initWithSide:(CGFloat)side;
- (void)calculateArea;

@end

@interface Rectangle : Shape 
{
   CGFloat length;
   CGFloat breadth;
}

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth;
@end

void polymorphismTest();


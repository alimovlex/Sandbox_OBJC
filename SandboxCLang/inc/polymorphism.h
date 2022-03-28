//
// Created by alimovlex
//

//
#import <Foundation/Foundation.h>
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


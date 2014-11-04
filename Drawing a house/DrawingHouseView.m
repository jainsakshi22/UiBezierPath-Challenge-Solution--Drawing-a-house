//
//  DrawingHouseView.m
//  Drawing a house
//
//  Created by Sakshi Jain on 04/11/14.
//
//

#import "DrawingHouseView.h"

@implementation DrawingHouseView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    
    [bezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/12.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/12.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    //Again move to point to add intermediate line
    [bezierPath moveToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width, 2/5.0 * self.bounds.size.height)];
    [bezierPath stroke];
    
    UIBezierPath *bezierRectangle = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(8/20.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height, 1/10.0 * self.bounds.size.width, 1/20.0 * self.bounds.size.height) cornerRadius:1/10.0];
    [[UIColor blueColor] setFill];
    [bezierRectangle fill];
}


@end

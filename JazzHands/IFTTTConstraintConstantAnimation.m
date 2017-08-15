//
//  IFTTTConstraintConstantAnimation.m
//  JazzHands
//
//  Created by willsbor Kang on 7/9/14.
//  Copyright (c) 2015 IFTTT Inc. All rights reserved.
//

#import "IFTTTConstraintConstantAnimation.h"

@interface IFTTTConstraintConstantAnimation ()

@property (nonatomic, strong) NSLayoutConstraint *constraint;

@end

@implementation IFTTTConstraintConstantAnimation

- (instancetype)initWithConstraint:(NSLayoutConstraint *)constraint
{
    if ((self = [super init])) {
        _constraint = constraint;
    }
    return self;
}

+ (instancetype)animationWithConstraint:(NSLayoutConstraint *)constraint
{
    return [[self alloc] initWithConstraint:constraint];
}

- (void)addKeyframeForTime:(CGFloat)time constant:(CGFloat)constant
{
    [self addKeyframeForTime:time value:@(constant)];
}

- (void)addKeyframeForTime:(CGFloat)time constant:(CGFloat)constant withEasingFunction:(IFTTTEasingFunction)easingFunction
{
    [self addKeyframeForTime:time value:@(constant) withEasingFunction:easingFunction];
}

- (void)animate:(CGFloat)time
{
    if (!self.hasKeyframes) return;
    self.constraint.constant = (CGFloat)[(NSNumber *)[self valueAtTime:time] floatValue];
}

@end

//
//  IFTTTConstraintConstantAnimation.h
//  JazzHands
//
//  Created by willsbor Kang on 7/9/14.
//  Copyright (c) 2015 IFTTT Inc. All rights reserved.
//

#import "IFTTTAnimation.h"

@interface IFTTTConstraintConstantAnimation : IFTTTAnimation <IFTTTAnimatable>

- (instancetype)initWithConstraint:(NSLayoutConstraint *)constraint;
+ (instancetype)animationWithConstraint:(NSLayoutConstraint *)constraint;
- (void)addKeyframeForTime:(CGFloat)time constant:(CGFloat)constant;
- (void)addKeyframeForTime:(CGFloat)time constant:(CGFloat)constant withEasingFunction:(IFTTTEasingFunction)easingFunction;

@end

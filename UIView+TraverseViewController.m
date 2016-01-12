//
//  UIView+TraverseViewController.m
//
//  Created by Icyjade_White on 16/1/12.
//  Copyright (c) 2016 IJW.Product All rights reserved.
//

#import "UIView+TraverseViewController.h"

@implementation UIView (TraverseViewController)

- (UIViewController *)firstAvailableUIViewController
{
    // convenience function for casting and to "mask" the recursive function
    return (UIViewController *)[self traverseResponderChainForUIViewController];
}

- (id)traverseResponderChainForUIViewController
{
    id nextResponder = [self nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        return nextResponder;
    } else if ([nextResponder isKindOfClass:[UIView class]]) {
        return [nextResponder traverseResponderChainForUIViewController];
    } else {
        return nil;
    }
}

@end

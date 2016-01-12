//
//  UIView+TraverseViewController.h
//
//  Created by Icyjade_White on 16/1/12.
//  Copyright (c) 2016 IJW.Product All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TraverseViewController)

- (UIViewController *)firstAvailableUIViewController;
- (id)traverseResponderChainForUIViewController;

@end

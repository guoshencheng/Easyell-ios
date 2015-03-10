//
//  UIScreen+Utilities.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "UIScreen+Utilities.h"

@implementation UIScreen (Utilities)

+ (CGFloat)height {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)width {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (BOOL)isSmallScreen {
    return [UIScreen height] == 480;
}

@end

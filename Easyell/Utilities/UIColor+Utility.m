//
//  UIColor+Utility.m
//  Vibin
//
//  Created by Sherlock on 3/31/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "UIColor+Utility.h"

@implementation UIColor (Utility)

+ (instancetype)productRedColor {
  return [UIColor colorWithRed:(239/255.0) green:(81/255.0) blue:(66/255.0) alpha:1];
}

+ (instancetype)darkGreyLabelColor {
  return [UIColor colorWithRed:(50/255.0) green:(50/255.0) blue:(50/255.0) alpha:1];
}

+ (instancetype)mediumGreyLabelColor {
  return [UIColor colorWithRed:77/255.0 green:76/255.0 blue:77/255.0 alpha:1.0];
}

+ (instancetype)greyLabelColor {
  return [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
}

+ (instancetype)greenLabelColor {
  return [UIColor colorWithRed:(0/255.0) green:(139/255.0) blue:(51/255.0) alpha:1];
}

+ (instancetype)greenButtonColor {
  return [UIColor colorWithRed:(20/255.0) green:(180/255.0) blue:(0/255.0) alpha:1];
}

+ (instancetype)darkGreenButtonColor {
  return [UIColor colorWithRed:(56/255.0) green:(181/255.0) blue:(74/255.0) alpha:1];
}

+ (instancetype)blackishGreenButtonColor {
  return [UIColor colorWithRed:(36/255.0) green:(116/255.0) blue:(48/255.0) alpha:1];
}

+ (instancetype)orangeLabelColor {
  return [UIColor colorWithRed:(255/255.0) green:(153/255.0) blue:(0/255.0) alpha:1];
}

+ (instancetype)deepOrangeLabelColor {
  return [UIColor colorWithRed:(255/255.0) green:(102/255.0) blue:(46/255.0) alpha:1];
}

+ (instancetype)redLabelColor {
  return [UIColor colorWithRed:(232/255.0) green:(54/255.0) blue:(28/255.0) alpha:1];
}

+ (instancetype)darkRedLabelColor {
  return [UIColor colorWithRed:(185/255.0) green:(45/255.0) blue:(25/255.0) alpha:1];
}

+ (instancetype)vibinChannelColor {
  return [self productRedColor];
}

+ (instancetype)vibinFriendsChannelColor {
  return [UIColor colorWithRed:(255/255.0) green:(102/255.0) blue:(46/255.0) alpha:1];
}

+ (instancetype)facebookChannelColor {
  return [UIColor colorWithRed:(76/255.0) green:(105/255.0) blue:(172/255.0) alpha:1];
}

+ (instancetype)googleChannelColor {
  return [UIColor colorWithRed:(168/255.0) green:(41/255.0) blue:(28/255.0) alpha:1];
}

+ (instancetype)twitterChannelColor {
  return [UIColor colorWithRed:(85/255.0) green:(172/255.0) blue:(238/255.0) alpha:1];
}

+ (instancetype)foursquareChannelColor {
  return [UIColor colorWithRed:(23/255.0) green:(188/255.0) blue:(226/255.0) alpha:1];
}

+ (instancetype)sportsChannelColor {
  return [UIColor colorWithRed:(241/255.0) green:(196/255.0) blue:(16/255.0) alpha:1];
}

+ (instancetype)gadgetsChannelColor {
  return [UIColor colorWithRed:(243/255.0) green:(155/255.0) blue:(17/255.0) alpha:1];
}

+ (instancetype)fashionChannelColor {
  return [UIColor colorWithRed:(232/255.0) green:(76/255.0) blue:(60/255.0) alpha:1];
}

+ (instancetype)travelChannelColor {
  return [UIColor colorWithRed:(111/255.0) green:(191/255.0) blue:(70/255.0) alpha:1];
}

+ (instancetype)booksChannelColor {
  return [UIColor colorWithRed:(27/255.0) green:(188/255.0) blue:(155/255.0) alpha:1];
}

+ (instancetype)newsChannelColor {
  return [UIColor colorWithRed:(255/255.0) green:(49/255.0) blue:(89/255.0) alpha:1];
}

+ (instancetype)authInputAreaDefaultColor {
  return [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1.0];
}

+ (instancetype)authInputHintLabelDefaultColor {
  return [UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:1.0];
}

+ (instancetype)releaseToNextLabelColor {
  return [UIColor colorWithRed:77/255.0 green:76/255.0 blue:77/255.0 alpha:1.0];
}

+ (instancetype)releaseToCloseLabelColor {
  return [UIColor colorWithRed:237/255.0 green:81/255.0 blue:66/255.0 alpha:1.0];
}

+ (instancetype)addFriendTableHeaderColor {
  return [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
}

+ (instancetype)addFriendTableLineViewColor {
  return [UIColor colorWithRed:(228/255.0) green:(228/255.0) blue:(228/255.0) alpha:1];
}

@end

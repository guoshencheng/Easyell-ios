//
//  ModifyTextViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModifyTextViewControllerDelegate;

typedef enum {
    ModifyTitle = 0,
    ModifyDescription = 1
} ModifyTextViewControllerEnum;

@interface ModifyTextViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewBottomConstraint;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UILabel *saveLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (strong, nonatomic) NSString *text;
@property (weak, nonatomic) id<ModifyTextViewControllerDelegate> delegate;
@property (assign, nonatomic) ModifyTextViewControllerEnum type;
+ (instancetype)create;
@end

@protocol ModifyTextViewControllerDelegate <NSObject>
@optional
- (void)modifyTextViewController:(ModifyTextViewController *)modifyTextViewController didClickSaveWithText:(NSString *)text;

@end

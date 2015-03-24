//
//  UserNameFormView.h
//  Vibin
//
//  Created by jackjiang on 4/7/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "AutoLayoutView.h"

@protocol UserNameFormViewDelegate;

@interface UserNameFormView : AutoLayoutView <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *displayNameTextField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (nonatomic, strong) NSString *oldUsername;

@property (nonatomic, weak) id<UserNameFormViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *inputViewWidthConstrain;


- (void)updateOldName:(NSString *)oldName;
- (void)beginEdit;
- (void)textFieldDidChange:(id)sender;
- (void)clearButtonClicked;

@end

@protocol UserNameFormViewDelegate <NSObject>

@optional

- (void)usernameFormView:(UserNameFormView *)usernameFormView didFinishUpdateUsername:(NSString *)username success:(BOOL)success;
- (void)usernameFormViewDidClickCancel:(UserNameFormView *)usernameFormView;

@end
//
//  ModifyTextViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ModifyTextViewController.h"

@interface ModifyTextViewController ()

@end

@implementation ModifyTextViewController

#pragma mark - PublicMethod

+ (instancetype)create {
    return [[ModifyTextViewController alloc] initWithNibName:@"ModifyTextViewController" bundle:nil];
}

#pragma mark - LiveCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.saveLabel.text = @"Save";
    self.textView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    self.textView.text = self.text;
    [self updateWordCountLabelWithCount:[self.textView.text length]];
    [self updateSubTitle];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Actions

- (IBAction)didClickBackButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)didClickSaveButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    if ([self.delegate respondsToSelector:@selector(modifyTextViewController:didClickSaveWithText:)]) {
        [self.delegate modifyTextViewController:self didClickSaveWithText:self.textView.text];
    }
}

#pragma mark - UITextViewDelegate

- (void)textViewDidBeginEditing:(UITextView *)textView {
    [UIView animateWithDuration:0.2 animations:^{
        self.textViewBottomConstraint.constant = 300;
        [self.view layoutIfNeeded];
    }];
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    [UIView animateWithDuration:0.2 animations:^{
        self.textViewBottomConstraint.constant = 150;
        [self.view layoutIfNeeded];
    }];
}

- (void)textViewDidChange:(UITextView *)textView {
    [self updateWordCountLabelWithCount:[textView.text length]];
}

#pragma mark - PrivateMethod

- (void)updateSubTitle {
    switch (self.type) {
        case ModifyTitle:
            self.subTitleLabel.text = @"Edit Title";
            break;
        case ModifyDescription:
            self.subTitleLabel.text = @"Edit Description";
        default:
            break;
    }
}

- (void)updateWordCountLabelWithCount:(NSInteger)count {
    self.wordCountLabel.text = [NSString stringWithFormat:@"Words %ld/%d",(long)count, 200];
}

@end

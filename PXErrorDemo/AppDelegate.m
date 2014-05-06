//
//  AppDelegate.m
//  PXErrorDemo
//
//  Created by liaocanguang on 14-5-6.
//
//

#import "AppDelegate.h"
#import "BaseViewController.h"

@implementation AppDelegate
{
    BaseViewController *_baseVC;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    _baseVC = [[BaseViewController alloc] initWithNibName:@"BaseViewController" bundle:nil];
    NSView *baseView = _baseVC.view;
    
    baseView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.window.contentView addSubview:baseView];
    
    [self.window.contentView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"|[baseView]|"
                                            options :NSLayoutFormatDirectionLeadingToTrailing
                                            metrics :nil
                                              views	:NSDictionaryOfVariableBindings(baseView)]];
    
    [self.window.contentView addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[baseView]|"
                                            options :NSLayoutFormatDirectionLeadingToTrailing
                                            metrics :nil
                                              views	:NSDictionaryOfVariableBindings(baseView)]];
}

@end

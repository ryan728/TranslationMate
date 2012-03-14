//
//  AppDelegate.m
//  TranslationMate
//
//  Created by Lei Zhang on 3/14/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = window_;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSRect frame = [window_.contentView bounds];
  NSSplitView *splitView = [[NSSplitView alloc] initWithFrame:frame];
  float height = frame.size.height;
  float width = frame.size.width;
  
  NSTextView *originalView = [[NSTextView alloc] initWithFrame:NSRectFromCGRect(CGRectMake(0, 0, width, height))];
  [originalView setString:@"English"];
  [splitView addSubview:originalView];
  NSTextView *translatedView = [[NSTextView alloc] initWithFrame:NSRectFromCGRect(CGRectMake(width, 0, width, height))];
  [translatedView setString:@"中文"];
  [splitView addSubview:translatedView];
  NSTextView *editingView = [[NSTextView alloc] initWithFrame:NSRectFromCGRect(CGRectMake(width * 2, 0, width, height))];
  [editingView setString:@"修改中文"];
  [splitView addSubview:editingView];
  
  [splitView setVertical:YES];
  [splitView adjustSubviews];
  
  [window_.contentView addSubview:splitView];
}

@end

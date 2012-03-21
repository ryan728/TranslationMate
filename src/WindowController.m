//
//  WindowController.m
//  TranslationMate
//
//  Created by Long Sun on 3/19/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import "WindowController.h"
#import "Document.h"

@implementation WindowController

@synthesize enTextView = enTextView_;

- (id)init
{
  self = [super initWithWindowNibName:@"WindowController"];
  if (self) {

  }

  return self;
}

//- (void)setDocument:(NSDocument *)document
//{
////TODO: override here for "Windows Are Restored Automatically"
//}

- (void)windowDidLoad
{
  [enTextView_ setTextColor:[NSColor darkGrayColor]];
  [enTextView_ setTextContainerInset:NSMakeSize(10, 10)];
  [enTextView_ setFont:[NSFont systemFontOfSize:16]];
  [enTextView_ setString:[[(Document *)[self document] text] string]];
}

@end

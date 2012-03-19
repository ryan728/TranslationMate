//
//  Document.m
//  TranslationMate
//
//  Created by Long Sun on 3/19/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import "Document.h"
#import "WindowController.h"

@implementation Document

- (id)init
{
  self = [super init];
  if (self) {
    // Add your subclass-specific initialization here.
  }
  return self;
}

- (NSString *)windowNibName
{
  // Override returning the nib file name of the document
  // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
  return @"Document";
}

//- (void)makeWindowControllers
//{
//  [self addWindowController:[[WindowController alloc] init]];
//}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
  [super windowControllerDidLoadNib:aController];
  // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
  return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
//  [textView breakUndoCoalescing];
//  NSData *data = [textView dataFromRange:NSMakeRange(0,
//                                                     [[textView textStorage] length])
//                      documentAttributes:nil
//                                   error:outError];
//  if (!data && outError) {
//    *outError = [NSError errorWithDomain:NSCocoaErrorDomain
//                                    code:NSFileWriteUnknownError userInfo:nil];
//  }
//  return data;
  return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
//  BOOL readSuccess = NO;
//  NSAttributedString *fileContents = [[NSAttributedString alloc]
//                                      initWithData:data options:nil documentAttributes:nil
//                                      error:outError];
//  if (fileContents) {
//    readSuccess = YES;
//    [self setText:fileContents];
//  }
//  return readSuccess;
  return NO;
}

@end

//
//  Document.m
//  TranslationMate
//
//  Created by Long Sun on 3/19/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import "Document.h"
#import "WindowController.h"
#import "NSArray+Access.h"

@implementation Document

@synthesize text;

- (void)makeWindowControllers
{
  [self addWindowController:[[WindowController alloc] init]];
}

- (WindowController *)windowController
{
  return [[self windowControllers] first];
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
  BOOL readSuccess = NO;
  NSAttributedString *fileContents = [[NSAttributedString alloc]
                                      initWithData:data options:nil documentAttributes:nil
                                      error:outError];
  if (fileContents) {
    readSuccess = YES;
    [self setText:fileContents];
  }
  return readSuccess;
  return NO;
}
@end

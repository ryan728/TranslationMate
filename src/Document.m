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

@interface Document ()

@property (nonatomic, readonly) NSTextView *textView;

@end

@implementation Document

@dynamic textView;

@synthesize text = text_;

- (void)makeWindowControllers
{
  [self addWindowController:[[WindowController alloc] init]];
}

- (WindowController *)windowController
{
  return [[self windowControllers] first];
}

- (NSTextView *)textView
{
  return [[self windowController] enTextView];
}

+ (BOOL)autosavesInPlace
{
  return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
  [self.textView breakUndoCoalescing];
  NSData *data = [self.textView.attributedString dataFromRange:NSMakeRange(0,
                                                                           [[self.textView textStorage] length])
                                            documentAttributes:[NSDictionary dictionaryWithObjectsAndKeys:NSPlainTextDocumentType, NSDocumentTypeDocumentAttribute, nil]
                  
                                   error:outError];
  if (!data && outError) {
    *outError = [NSError errorWithDomain:NSCocoaErrorDomain
                                    code:NSFileWriteUnknownError userInfo:nil];
  }
  return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
  BOOL readSuccess = NO;
  NSAttributedString *fileContents = [[NSAttributedString alloc]
                                      initWithData:data options:nil documentAttributes:nil
                                      error:outError];
  if (fileContents) {
    readSuccess = YES;
    text_ = fileContents;
  }
  return readSuccess;
  return NO;
}
@end

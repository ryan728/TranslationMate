//
//  Document.h
//  TranslationMate
//
//  Created by Long Sun on 3/19/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument

@property (nonatomic, readonly) NSAttributedString* text;

@end

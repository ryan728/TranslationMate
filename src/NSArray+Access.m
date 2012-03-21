//
//  NSArray+Access.m
//  TranslationMate
//
//  Created by Long Sun on 3/20/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import "NSArray+Access.h"

@implementation NSArray (Access)

- (id)first
{
  return [self count] > 0 ? [self objectAtIndex:0] : nil;
}

- (id)last
{
  return [self lastObject];
}

- (BOOL)isEmpty
{
  return [self count] == 0;
}

- (BOOL)isNotEmpty
{
  return ![self isEmpty];
}

@end

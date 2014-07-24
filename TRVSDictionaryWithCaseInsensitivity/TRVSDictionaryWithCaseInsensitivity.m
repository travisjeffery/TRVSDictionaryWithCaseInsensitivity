//
//  TRVSDictionaryWithCaseInsensitivity.m
//  TRVSDictionaryWithCaseInsensitivity
//
//  Created by Travis Jeffery on 7/24/14.
//  Copyright (c) 2014 Travis Jeffery. All rights reserved.
//

#import "TRVSDictionaryWithCaseInsensitivity.h"

@implementation TRVSDictionaryWithCaseInsensitivity {
  NSDictionary *_dict;
}

- (instancetype)initWithObjects:(const id [])objects forKeys:(const id<NSCopying> [])keys count:(NSUInteger)cnt {
  if (self = [super init]) {
    _dict = [[NSDictionary alloc] initWithObjects:objects forKeys:keys count:cnt];
  }
  return self;
}

- (NSUInteger)count {
  return _dict.count;
}

- (NSEnumerator *)keyEnumerator {
  return _dict.keyEnumerator;
}

- (id)objectForKey:(id)aKey {
  id obj = [_dict objectForKey:aKey];
  
  if (obj != nil || ![aKey isKindOfClass:[NSString class]])
    return obj;

  for (id key in _dict.keyEnumerator) {
    if ([key isKindOfClass:[NSString class]] && [key caseInsensitiveCompare:aKey] == NSOrderedSame) {
      return [_dict objectForKey:key];
    }
  }
  
  return obj;
}

@end

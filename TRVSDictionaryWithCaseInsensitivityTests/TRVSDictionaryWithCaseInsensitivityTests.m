//
//  TRVSDictionaryWithCaseInsensitivityTests.m
//  TRVSDictionaryWithCaseInsensitivityTests
//
//  Created by Travis Jeffery on 7/24/14.
//  Copyright (c) 2014 Travis Jeffery. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TRVSDictionaryWithCaseInsensitivity.h"

@interface TRVSDictionaryWithCaseInsensitivityTests : XCTestCase

@end

@implementation TRVSDictionaryWithCaseInsensitivityTests

- (void)testAccessingCaseInsentive {
  TRVSDictionaryWithCaseInsensitivity *dict = [TRVSDictionaryWithCaseInsensitivity dictionaryWithDictionary:@{ @"Name": @"Travis" }];

  XCTAssertEqualObjects(@"Travis", dict[@"name"]);
}

@end

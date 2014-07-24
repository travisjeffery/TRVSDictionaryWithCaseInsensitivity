//
//  TRVSDictionaryWithCaseInsensitivityTests.m
//  TRVSDictionaryWithCaseInsensitivityTests
//
//  Created by Travis Jeffery on 7/24/14.
//  Copyright (c) 2014 Travis Jeffery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "TRVSDictionaryWithCaseInsensitivity.h"

@interface TRVSDictionaryWithCaseInsensitivityTests : XCTestCase

@end

@implementation TRVSDictionaryWithCaseInsensitivityTests

- (void)testAccessingCaseInsentiveString {
  XCTAssertEqualObjects(@"Travis", [TRVSDictionaryWithCaseInsensitivity dictionaryWithDictionary:@{ @"Name": @"Travis" }][@"name"]);
}

- (void)testAccessingObject {
  XCTAssertEqualObjects(@"Travis", [TRVSDictionaryWithCaseInsensitivity dictionaryWithDictionary:@{ @1: @"Travis" }][@1]);
}


@end

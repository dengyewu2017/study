//
//  testStoryBoardTests.m
//  testStoryBoardTests
//
//  Created by DENGYEWU on 17/1/17.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//
//  XCTestCase工具学习: http://www.jianshu.com/p/f4ba532caed0
//

#import <XCTest/XCTest.h>

@interface testStoryBoardTests : XCTestCase

@end

@implementation testStoryBoardTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"...this is a testExample...");
    //XCTFail(@"No implementation for \"%s\"",__PRETTY_FUNCTION__);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

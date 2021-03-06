//
//  Demo1Tests.m
//  Demo1Tests
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DMObject1.h"
#import "DMObject1+Category.h"
#import "DMObject2.h"

@interface Demo1Tests : XCTestCase
@property (nonatomic, retain) DMObject2 *obj2;
@property (nonatomic, retain) DMObject1 *obj1;

@end

@implementation Demo1Tests

- (void)setUp {
    DMObject1 *dObj1 = [DMObject1 new];
    self.obj1 = dObj1;
    self.obj2 = [[DMObject2 alloc] initWithObject:dObj1];
}

- (void)tearDown {
    [self.obj1 release];
    [self.obj2 release];
}

- (void)test1 {
    [self.obj2 testMethod];
    [self.obj2 updateProperty2];
    XCTAssertTrue([self.obj2.strPublic2 isEqualToString:@"string from object 2"]);
}

- (void)test2 {
    NSLog(@"%@", @"start test 2");
    XCTAssertFalse(false);
//    XCTAssertFalse(true);
    XCTAssertNil(nil);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

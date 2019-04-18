//
//  DMObject2.m
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DMObject2.h"
#import "DMObject1+Category.h"
#import "DMObject3.h"

#pragma mark - Object2
@interface DMObject2 ()
@property (nonatomic, copy) NSString *initString;
@property (nonatomic, retain) DMObject1 *initObject;
@end

@implementation DMObject2

// class method
+(id)initWithObject:(DMObject1 *)object {
    DMObject2 *obj2 = [[DMObject2 new] autorelease];
    obj2.strPublic2 = object.strPublic;
    return obj2;
    //    return [[DMObject2 alloc] initWithString:object.strPublic];
}

// instance method
-(id)initWithString:(NSString *)string {
    self = [super init];
    if (self) {
        self.initString = [string copy];
    }
    return self;
}

-(id)initWithObject:(DMObject1 *)object {
    self = [super init];
    if (self) {
        _initObject = [object retain];
    }
    return self;
}

// add setter to override property
- (void)setStrPublic2:(NSString *)strPublic2 {
    // if current ivar is not equal to incoming
    if (self.strPublic2 != strPublic2) {
        [_strPublic2 release];
        _strPublic2 = [strPublic2 copy];
    }
}

-(void)updateProperty2 {
    self.strPublic2 = self.initObject.strPublic;
}

-(void)testMethod {
    // check if initObject exists
    SEL selUpdate = @selector(updateProperty);
    if ([self.initObject respondsToSelector:selUpdate]) {
        [self.initObject updateProperty];
    }
    
    DMObject3 *dm3 = [[DMObject3 new] autorelease];
    [self testAutorelease:dm3];
}



-(void)testAutorelease:(DMObject3 *)obj3 {
    // 1st type
//    [obj3 retain];
//    [obj3 newItem3];
//    [obj3 release];
    
    // 2nd - custom autorelease pool
    NSAutoreleasePool *pool = [NSAutoreleasePool autorelease];
    // everyting between pool and [pool release] goes inside the pool
    DMObject3 *object3 = [[DMObject3 new] autorelease];
    
    for (int i=0; i <= 10000000; i++) {
        if (i==1000) {
            [pool drain];
        }
    }
    [pool release];
    
    // 3rd
//    @autoreleasepool {
//        
//    }
}

- (void)protocolMethodRequired { 
    
}

-(void)dealloc {
    [_initString release];
    [_initObject release];
    [super dealloc];
}

@end

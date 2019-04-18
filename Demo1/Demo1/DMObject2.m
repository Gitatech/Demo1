//
//  DMObject2.m
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DMObject2.h"
#import "DMObject1+Category.h"

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
}

-(void)dealloc {
    [_initString release];
    [_initObject release];
    [super dealloc];
}

@end

//
//  DMObject4.m
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DMObject4.h"

@interface DMObject4()
@property(nonatomic, copy) NSString *innerString;
@end

@implementation DMObject4

-(void)updateInnerString:(NSString *)string {
    [self willChangeValueForKey:@"iString"];
    self.innerString = string;
    [self didChangeValueForKey:@"iString"];
}
-(id)valueForUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"aNumber"]) {
        return self.number;
    }
    return nil;
}

-(id)valueForKey:(NSString *)key{
    id returnValue = nil;
    if ([key isEqualToString:@"aNumber"]) {
        returnValue = self.number;
    } else if ([key isEqualToString:@"iString"]) {
        returnValue = self.innerString;
    } else {
       returnValue = [super valueForKey:key];
    }
    return returnValue;
}

-(void)setValue:(id)value forKey:(NSString *)key {
    if ([key isEqualToString:@"aNumber"]) {
        self.number = value;
    } else if ([key isEqualToString:@"iString"]) {
        [self updateInnerString:value];
    } else {
        [super setValue:value forKey:key];
    }
}

@end

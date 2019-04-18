//
//  DMObject2.h
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMObject1.h"

@interface DMObject2 : NSObject
@property (nonatomic, copy) NSString *strPublic2;
+(id)initWithObject:(DMObject1 *)object;
-(id)initWithObject:(DMObject1 *)object;
-(id)initWithString:(NSString  *)string;
-(void)testMethod;

@end

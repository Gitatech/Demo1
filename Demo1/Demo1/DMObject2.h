//
//  DMObject2.h
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMObject1.h"
#import "DMObjectProtocol.h"

@interface DMObject2 : NSObject<DMObjectProtocol>
@property (nonatomic, copy) NSString *strPublic2;
+(id)initWithObject:(DMObject1 *)object;
-(id)initWithObject:(DMObject1 *)object;
-(id)initWithString:(NSString  *)string;
-(void)testMethod;
-(void)updateProperty2;

@end

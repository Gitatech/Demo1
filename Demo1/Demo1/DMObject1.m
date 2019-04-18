//
//  DMObject1.m
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DMObject1.h"

// extension
@interface DMObject1()
// all methods and objects described here will be visible only here
@property(nonatomic, retain) NSString *strProtected;

@end

@implementation DMObject1

-(void)newItem {
    
}

- (void)protocolMethodRequired {
    NSLog(@"%@", @"Object1 required");
}

-(void)protocolMethodOptional {
    NSLog(@"%@", @"Object1 optional");
}

@end

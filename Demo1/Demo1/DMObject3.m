//
//  DMObject3.m
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DMObject3.h"

@implementation DMObject3

-(void)launchProtocol:(id<DMObjectProtocol>)protocol {
    [protocol protocolMethodRequired];
    
    if ([protocol respondsToSelector:@selector(protocolMethodOptional)]) {
        [protocol protocolMethodOptional];
    }
}

-(void)newItem3 {
    
}

@end

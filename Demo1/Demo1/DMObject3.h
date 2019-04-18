//
//  DMObject3.h
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMObjectProtocol.h"

@interface DMObject3 : NSObject
-(void)launchProtocol:(id<DMObjectProtocol>)protocol;
-(void)newItem3;
@end


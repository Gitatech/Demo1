//
//  DMObject+Category.m
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DMObject1+Category.h"

@implementation DMObject1(Categoty)

-(void)updateProperty {
    self.strPublic = [NSString stringWithFormat:@"%@", @"string from object 2"];
}

@end

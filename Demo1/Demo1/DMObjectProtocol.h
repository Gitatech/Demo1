//
//  DMObjectProtocol.h
//  Demo1
//
//  Created by Admin on 18.04.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

// protocol helps us to separate logics
@protocol DMObjectProtocol <NSObject>
@required
-(void)protocolMethodRequired;

@optional
-(void)protocolMethodOptional;
@end


//
//  User.m
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "User.h"

@implementation User

- (id)initWithBattleTag:(NSString *)battleTag identifier:(NSString *)identifier firstName:(NSString *)firstName andLastName:(NSString *)lastName{
    
    self = [super init];
    if(self){
        _battleTag = battleTag;
        _identifier = identifier;
        _firstName = firstName;
        _lastName = lastName;
    }
    return self;
}


@end

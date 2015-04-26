//
//  User.m
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "User.h"

@implementation User

- (id)initWithBattleTag:(NSString *)battleTag paragonLevel:(NSString *)paragonLevel{
    
    self = [super init];
    if(self){
        _battleTag = battleTag;
        _paragonLevel = paragonLevel;
    }
    return self;
}


@end

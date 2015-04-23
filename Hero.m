//
//  Hero.m
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "Hero.h"

@implementation Hero

- (id)initWithIdentifier:(NSString *)identifier name:(NSString *)name andLastUptated:(NSString *)lastUptated{
    
    self = [super init];
    if(self){
        _identifier = identifier;
        _name = name;
        _lastUptated = lastUptated;
    }
    return self;
}

@end

//
//  HeroClass.m
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "HeroClass.h"

@implementation HeroClass

-(id)initWithName:(NSString *)name andDescription:(NSString *)description{
    
    self = [super init];
    if(self){
        _name = name;
        _desc = description;
    }
    return self;
}

@end

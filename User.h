//
//  User.h
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hero.h"

@interface User : NSObject

@property(nonatomic) NSString *battleTag, *paragonLevel;
@property(nonatomic) NSMutableArray *hereos;

- (id)initWithBattleTag:(NSString*)battleTag paragonLevel:(NSString*)paragonLevel;

@end

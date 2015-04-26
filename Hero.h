//
//  Hero.h
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeroClass.h"

@interface Hero : NSObject

@property(nonatomic)NSString *identifier, *name, *lastUptated, *level;
@property(nonatomic)HeroClass *heroClass;

- (id)initWithIdentifier:(NSString*)identifier name:(NSString*)name andLastUptated:(NSString*)lastUptated;

@end

//
//  HeroClass.h
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeroClass : NSObject

@property(nonatomic, readonly) NSString *name, *desc;

- (id)initWithName:(NSString*)name andDescription:(NSString*)description;

@end

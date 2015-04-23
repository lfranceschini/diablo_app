//
//  User.h
//  Diablo
//
//  Created by Ludovic on 22/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property(nonatomic, readonly) NSString *battleTag, *identifier, *firstName, *lastName;

- (id)initWithBattleTag:(NSString*)battleTag identifier:(NSString*)identifier firstName:(NSString*)firstName andLastName:(NSString*)lastName;

@end

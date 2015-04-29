//
//  UserDao.h
//  Diablo
//
//  Created by Ludovic on 27/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserDao : NSObject

typedef void (^UserDaoCompletionHandler)(NSData *data, NSURLResponse *response, NSError *error);

- (void)getUserByBattleTag:(NSString*)battleTag andCompletionHandler:(UserDaoCompletionHandler)completionHandler;

@end

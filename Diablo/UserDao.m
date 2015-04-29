//
//  UserDao.m
//  Diablo
//
//  Created by Ludovic on 27/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "UserDao.h"

NSString const *url = @"https://eu.api.battle.net/d3/profile/Alpha%231935/?locale=fr_FR&apikey=kppra467my6qzf7bxcxhk8qtsgmx78gt";

@interface UserDao(){
    NSURLSessionConfiguration *sessionConfig;
    NSURL *url;
}

@end

@implementation UserDao

-(id)initWithBattleTag:(NSString*)battleTag localisation:(NSString*)localisation andApiKey:(NSString*)apiKey{
    self = [super init];
    if(self){
        url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"%@%@%@%@%@", battleTag, @"/?locale", localisation, @"@apikey", apiKey]];
    }
    return self;
}

-(void)getUserByBattleTag:(NSString *)battleTag andCompletionHandler:(UserDaoCompletionHandler)completionHandler{
    sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig.allowsCellularAccess = YES;
    [sessionConfig setHTTPAdditionalHeaders:@{@"Accept": @"application/json"}];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig];
    [[session dataTaskWithURL:url completionHandler:completionHandler] resume];
}

@end

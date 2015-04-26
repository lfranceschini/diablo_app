//
//  HTTPClient.m
//  Diablo
//
//  Created by Ludovic on 26/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "HTTPClient.h"
NSString const *key = @"kppra467my6qzf7bxcxhk8qtsgmx78gt";
NSString const *sharedSecret = @"ZdwEYPfMMx5Dr8dYcn9JRqqKXfJyQGhN";
NSString const *urlBegin = @"https://eu.api.battle.net/d3/profile/";
NSString const *language = @"fr_FR";

@implementation HTTPClient

+ (NSString*)getUserDataByBattleTag:(NSString*)battleTag{
    NSString *params = [NSString stringWithFormat:@"%@%@%@%@%@", battleTag, @"/?locale", language, @"@apikey", key];
    NSString *url = [NSString stringWithFormat:@"%@,%@", urlBegin, params];
    return url;
}


@end

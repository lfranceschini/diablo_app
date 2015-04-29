//
//  JsonParser.m
//  Diablo
//
//  Created by Ludovic on 27/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import "JsonParser.h"

@implementation JsonParser

- (User*)getUserInformationFromJsonString:(NSData *)userJson{
    User *user = [[User alloc] init];
    HeroClass *heroClass = [[HeroClass alloc]init];
    id jsonResponse = [NSJSONSerialization JSONObjectWithData:userJson options:0 error:nil];
    user.battleTag = jsonResponse[@"battleTag"];
    user.paragonLevel = jsonResponse[@"paragonLevel"];
    NSDictionary *hereos = jsonResponse[@"heroes"];
    for(NSDictionary *h in hereos){
        Hero *hero = [[Hero alloc]init];
        hero.name = [h valueForKey:@"name"];
        hero.level = [h valueForKey:@"level"];
        heroClass.name = [h valueForKey:@"class"];
        hero.heroClass = heroClass;
        [user.hereos addObject:hero];
    }
    return user;
}

- (NSArray*)itemsFromHeroIdentifier:(NSData*)itemsJson{
    return nil;
}

- (NSArray*)heroesFromUserIdentifier:(NSData*)hereosJson{
    return nil;
}

@end

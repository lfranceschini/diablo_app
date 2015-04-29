//
//  JsonParser.h
//  Diablo
//
//  Created by Ludovic on 27/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface JsonParser : NSObject

- (User*)getUserInformationFromJsonString:(NSData*)userJson;
- (NSArray*)itemsFromHeroIdentifier:(NSData*)itemsJson;
- (NSArray*)heroesFromUserIdentifier:(NSData*)hereosJson;

@end

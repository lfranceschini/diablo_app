//
//  HTTPClient.h
//  Diablo
//
//  Created by Ludovic on 26/04/2015.
//  Copyright (c) 2015 Ludovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPClient : NSObject

+ (NSString*)getUserDataByBattleTag:(NSString*)battleTag;

@end

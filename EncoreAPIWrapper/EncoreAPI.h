//
//  EncoreAPI.h
//  EncoreAPIWrapper
//
//  Created by Carlos Arenas on 4/28/14.
//  Copyright (c) 2014 Carlos Arenas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperationManager.h"
#import "AFURLSessionManager.h"

@interface EncoreAPI : NSObject

+ (void)pingTest;
+ (void)registerTest:(NSString *)email pass:(NSString *)password;

@end

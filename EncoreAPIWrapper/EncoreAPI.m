//
//  EncoreAPI.m
//  EncoreAPIWrapper
//
//  Created by Carlos Arenas on 4/28/14.
//  Copyright (c) 2014 Carlos Arenas. All rights reserved.
//

#import "EncoreAPI.h"

#define BASE_URL @"http://tango.encore.io:80/api/"

@implementation EncoreAPI

#pragma mark - Encore API Tests
+ (void)pingTest{

    NSString *apiAction = @"/ping";
    NSString *url = [NSString stringWithFormat:@"%@%@", BASE_URL, apiAction];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject){
        NSLog(@"Response: %@", responseObject);
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error){
        NSLog(@"Error: %@", error);
    }];
}

+ (void)registerTest:(NSString *)email pass:(NSString *)password{
    NSString *apiAction = @"//register/email";
    NSString *url = [NSString stringWithFormat:@"%@%@", BASE_URL, apiAction];
    
    NSDictionary *params = @{@"email": email,
                             @"password": password};
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"Response: %@", responseObject);
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end

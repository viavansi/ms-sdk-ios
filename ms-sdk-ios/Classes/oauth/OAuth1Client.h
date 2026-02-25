//
//  OAuth1Client.h
//
//  Created by Jesús López on 10/02/2015.
//  Copyright (c) 2015 Jesús López @inyenia
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@class OAuth1Client;

@protocol OAuth2ClientDelegate <NSObject>
- (nullable NSString *)accessToken:(NSError*__strong*)error;
@end

@interface OAuth1Client : NSObject

@property (readwrite, nonatomic, copy) NSString *consumerKey;
@property (readwrite, nonatomic, copy) NSString *consumerSecret;
@property (readwrite, nonatomic, copy) NSString *token;
@property (readwrite, nonatomic, copy) NSString *tokenSecret;

@property (nullable, nonatomic, weak) id<OAuth2ClientDelegate> oauth2delegate;

@property (readwrite, nonatomic) BOOL oauthReplaceHttps;

- (void) authorizeRequest:(NSMutableURLRequest *)request error:(NSError*__strong*)error;

@end


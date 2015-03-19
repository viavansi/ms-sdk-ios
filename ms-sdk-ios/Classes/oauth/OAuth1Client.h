//
//  OAuth1Client.h
//
//  Created by Jesús López on 10/02/2015.
//  Copyright (c) 2015 Jesús López @inyenia
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@class OAuth1Client;

@interface OAuth1Client : NSObject

@property (readwrite, nonatomic, copy) NSString *consumerKey;
@property (readwrite, nonatomic, copy) NSString *consumerSecret;
@property (readwrite, nonatomic, copy) NSString *token;
@property (readwrite, nonatomic, copy) NSString *tokenSecret;

- (void)authorizeRequest:(NSMutableURLRequest *)request;

@end

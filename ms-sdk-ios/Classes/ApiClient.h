#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperationManager.h"

/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const SWGResponseObjectErrorKey;


@interface ApiClient : AFHTTPRequestOperationManager

@property(nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property(nonatomic, assign) NSTimeInterval timeoutInterval;
@property(nonatomic, assign) BOOL logRequests;
@property(nonatomic, assign) BOOL logCacheHits;
@property(nonatomic, assign) BOOL logServerResponses;
@property(nonatomic, assign) BOOL logJSON;
@property(nonatomic, assign) BOOL logHTTP;
@property(nonatomic, readonly) NSOperationQueue* queue;

@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) NSString *consumerKey;
@property (strong, nonatomic) NSString *consumerSecret;
@property (strong, nonatomic) NSString *token;
@property (strong, nonatomic) NSString *tokenSecret;
@property (nonatomic) bool sslPinningEnabled;

#define SWGResponseObjectErrorKey @"SWGResponseObject"

+(ApiClient *) sharedInstance;
+(NSOperationQueue*) sharedQueue;
+(void)setLoggingEnabled:(bool) state;
+(void)clearCache;
+(void)setCacheEnabled:(BOOL) enabled;
+(unsigned long)requestQueueSize;
+(void) setOfflineState:(BOOL) state;
+(AFNetworkReachabilityStatus) getReachabilityStatus;
+(NSNumber*) nextRequestId;
+(NSNumber*) queueRequest;
+(void) cancelRequest:(NSNumber*)requestId;
+(NSString*) escape:(id)unescaped;
+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock;
+(void) configureCacheReachibility;
-(NSNumber*)  dictionary:(NSString*) path
                  method:(NSString*) method
             queryParams:(NSDictionary*) queryParams
                    body:(id) body
            headerParams:(NSDictionary*) headerParams
      requestContentType:(NSString*) requestContentType
     responseContentType:(NSString*) responseContentType
         successBlock:(void (^)(NSDictionary*))successBlock
			errorBlock:(void (^)(NSError *))errorBlock;
-(NSNumber*)  stringWithCompletionBlock:(NSString*) path
                                 method:(NSString*) method
                            queryParams:(NSDictionary*) queryParams
                                   body:(id) body
                           headerParams:(NSDictionary*) headerParams
                     requestContentType:(NSString*) requestContentType
                    responseContentType:(NSString*) responseContentType
                        successBlock:(void (^)(NSString*))successBlock
						errorBlock:(void (^)(NSError *))errorBlock;
@end


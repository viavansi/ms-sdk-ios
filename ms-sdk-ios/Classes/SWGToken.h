#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGToken : SWGObject

@property(nonatomic) NSString* oauth_token;  

@property(nonatomic) NSString* oauth_token_secret;  

- (id) oauth_token: (NSString*) oauth_token
     oauth_token_secret: (NSString*) oauth_token_secret;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


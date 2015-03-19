//
//  OAuth1Client.h
//
//  Created by Jesús López on 10/02/2015.
//  Copyright (c) 2015 Jesús López @inyenia
//

#import "OAuth1Client.h"
#import "AFNetworking.h"

#import <CommonCrypto/CommonHMAC.h>

static NSString * const kAFOAuth1Version = @"1.0";
static NSString * const kAFOAuth1SignatureMethod = @"HMAC-SHA1";

static NSString * AFEncodeBase64WithData(NSData *data) {
	NSUInteger length = [data length];
	NSMutableData *mutableData = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
	
	uint8_t *input = (uint8_t *)[data bytes];
	uint8_t *output = (uint8_t *)[mutableData mutableBytes];
	
	for (NSUInteger i = 0; i < length; i += 3) {
		NSUInteger value = 0;
		for (NSUInteger j = i; j < (i + 3); j++) {
			value <<= 8;
			if (j < length) {
				value |= (0xFF & input[j]);
			}
		}
		
		static uint8_t const kAFBase64EncodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
		
		NSUInteger idx = (i / 3) * 4;
		output[idx + 0] = kAFBase64EncodingTable[(value >> 18) & 0x3F];
		output[idx + 1] = kAFBase64EncodingTable[(value >> 12) & 0x3F];
		output[idx + 2] = (i + 1) < length ? kAFBase64EncodingTable[(value >> 6)  & 0x3F] : '=';
		output[idx + 3] = (i + 2) < length ? kAFBase64EncodingTable[(value >> 0)  & 0x3F] : '=';
	}
	
	return [[NSString alloc] initWithData:mutableData encoding:NSASCIIStringEncoding];
}

static NSString * AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(NSString *string, NSStringEncoding encoding) {
	static NSString * const kAFCharactersToBeEscaped = @":/?&=;+!@#$()',*";
	static NSString * const kAFCharactersToLeaveUnescaped = @"[].";
	
	return (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)string, (__bridge CFStringRef)kAFCharactersToLeaveUnescaped, (__bridge CFStringRef)kAFCharactersToBeEscaped, CFStringConvertNSStringEncodingToEncoding(encoding));
}

static inline NSString * AFNounce() {
	CFUUIDRef uuid = CFUUIDCreate(NULL);
	CFStringRef string = CFUUIDCreateString(NULL, uuid);
	CFRelease(uuid);
	
	return (NSString *)CFBridgingRelease(string);
}

@implementation OAuth1Client

- (NSString *) hmacSha1Signature:(NSURLRequest *)request oauthParameters:(NSString *)oauthParameters
{
	
	self.consumerSecret = AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(self.consumerSecret, NSUTF8StringEncoding);
	self.tokenSecret = AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(self.tokenSecret, NSUTF8StringEncoding);
	
	NSString *secretString = [NSString stringWithFormat:@"%@&",self.consumerSecret];
	if (self.tokenSecret !=  nil) {
		secretString = [NSString stringWithFormat:@"%@&%@", self.consumerSecret,self.tokenSecret];
	}
	NSData *secretStringData = [secretString dataUsingEncoding:NSUTF8StringEncoding];
	
	NSString *queryString = AFPercentEscapedQueryStringPairMemberFromStringWithEncoding([[[[[request URL] query] componentsSeparatedByString:@"&"] sortedArrayUsingSelector:@selector(compare:)] componentsJoinedByString:@"&"], NSUTF8StringEncoding);
	
	NSString *requestString = [NSString stringWithFormat:@"%@&%@", [request HTTPMethod], AFPercentEscapedQueryStringPairMemberFromStringWithEncoding([[[request URL] absoluteString] componentsSeparatedByString:@"?"][0], NSUTF8StringEncoding)];
	
	if (queryString != nil) {
		requestString = [NSString stringWithFormat:@"%@&%@", requestString, queryString];
	}
	
	requestString = [NSString stringWithFormat:@"%@&%@", requestString, oauthParameters];
	
	NSLog(@"Data to sign: %@", requestString);
	
	NSData *requestStringData = [requestString dataUsingEncoding:NSUTF8StringEncoding];
	
	uint8_t digest[CC_SHA1_DIGEST_LENGTH];
	CCHmacContext cx;
	CCHmacInit(&cx, kCCHmacAlgSHA1, [secretStringData bytes], [secretStringData length]);
	CCHmacUpdate(&cx, [requestStringData bytes], [requestStringData length]);
	CCHmacFinal(&cx, digest);
	
	NSString *signedString = AFEncodeBase64WithData([NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH]);
	NSLog(@"Signed data: %@", signedString);
	
	return signedString;
}

- (NSMutableDictionary *)OAuthParameters {
	
	NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
	parameters[@"oauth_version"] = kAFOAuth1Version;
	parameters[@"oauth_signature_method"] = kAFOAuth1SignatureMethod;
	parameters[@"oauth_consumer_key"] = self.consumerKey;
	parameters[@"oauth_timestamp"] = [@(floor([[NSDate date] timeIntervalSince1970])) stringValue];
	parameters[@"oauth_nonce"] = AFNounce();
	
	if (self.token) {
		parameters[@"oauth_token"] = self.token;
	}
	return parameters;
}

- (NSString *)OAuthSignatureForRequest:(NSMutableURLRequest *)request oauthParameters:(NSString *)oauthParameters
{
	return [self hmacSha1Signature:request oauthParameters:oauthParameters];
}

+ (NSString *)queryStringFromParameters:(NSDictionary *)parameters
{
	NSMutableArray *entries = [NSMutableArray array];
	[parameters enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
		NSString *entry = [NSString stringWithFormat:@"%@=%@", AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(key, NSUTF8StringEncoding), AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(obj, NSUTF8StringEncoding)];
		[entries addObject:entry];
	}];
	return [entries componentsJoinedByString:@"&"];
}

- (void) authorizeRequest:(NSMutableURLRequest *)request
{
	[request setValue:[self authorizationHeaderForRequest:request] forHTTPHeaderField:@"Authorization"];
	[request setHTTPShouldHandleCookies:NO];
}

- (NSString *)authorizationHeaderForRequest:(NSMutableURLRequest *)request
{
	static NSString * const kAFOAuth1AuthorizationFormatString = @"OAuth %@";
	
	NSMutableDictionary *parameters = [self OAuthParameters];
	NSArray *sortedComponents = [[[OAuth1Client queryStringFromParameters:parameters] componentsSeparatedByString:@"&"] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
	
	NSString *oauthParameters = [[sortedComponents componentsJoinedByString:@"&"] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	oauthParameters = AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(oauthParameters, NSUTF8StringEncoding);
	
	parameters[@"oauth_signature"] = [self OAuthSignatureForRequest:request oauthParameters:oauthParameters];
	parameters[@"realm"] = [[request URL] absoluteString];
	
	sortedComponents = [[[OAuth1Client queryStringFromParameters:parameters] componentsSeparatedByString:@"&"] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
	
	oauthParameters = [[sortedComponents componentsJoinedByString:@"&"] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	oauthParameters = AFPercentEscapedQueryStringPairMemberFromStringWithEncoding(oauthParameters, NSUTF8StringEncoding);
	
	NSMutableArray *mutableComponents = [NSMutableArray array];
	for (NSString *component in sortedComponents) {
		NSArray *subcomponents = [component componentsSeparatedByString:@"="];
		if ([subcomponents count] == 2) {
			[mutableComponents addObject:[NSString stringWithFormat:@"%@=\"%@\"", subcomponents[0], subcomponents[1]]];
		}
	}
	NSString *authorization = [NSString stringWithFormat:kAFOAuth1AuthorizationFormatString, [mutableComponents componentsJoinedByString:@", "]];
	NSLog(@"%@", authorization);
	return authorization;
}

@end
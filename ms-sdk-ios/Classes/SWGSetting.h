#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGPolicy.h"

@interface SWGSetting : SWGObject

@property(nonatomic) NSString* titleKey;  

@property(nonatomic) NSString* descriptionKey;  

@property(nonatomic) SWGPolicy* policy;  

@property(nonatomic) NSString* callbackURL;  

- (id) titleKey: (NSString*) titleKey
     descriptionKey: (NSString*) descriptionKey
     policy: (SWGPolicy*) policy
     callbackURL: (NSString*) callbackURL;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


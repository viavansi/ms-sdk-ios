#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPolicy.h"


@interface MSSetting : SWGObject

@property(nonatomic) NSString* titleKey;  
@property(nonatomic) NSString* descriptionKey;  
@property(nonatomic) MSPolicy* policy;  
@property(nonatomic) NSString* callbackURL;  
- (id) titleKey: (NSString*) titleKey     
    descriptionKey: (NSString*) descriptionKey     
    policy: (MSPolicy*) policy     
    callbackURL: (NSString*) callbackURL;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

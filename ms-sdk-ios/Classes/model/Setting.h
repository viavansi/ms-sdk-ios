#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Policy.h"


@interface Setting : SWGObject

@property(nonatomic) NSString* titleKey;  
@property(nonatomic) NSString* descriptionKey;  
@property(nonatomic) Policy* policy;  
@property(nonatomic) NSString* callbackURL;  
- (id) titleKey: (NSString*) titleKey     
    descriptionKey: (NSString*) descriptionKey     
    policy: (Policy*) policy     
    callbackURL: (NSString*) callbackURL;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

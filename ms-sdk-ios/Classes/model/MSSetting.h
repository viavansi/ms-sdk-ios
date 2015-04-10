#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPolicy.h"


@interface MSSetting : SWGObject

@property(nonatomic) NSString* titleKey;  
@property(nonatomic) NSString* descriptionKey;  
@property(nonatomic) MSPolicy* policy;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* workflow;  
- (id) titleKey: (NSString*) titleKey     
    descriptionKey: (NSString*) descriptionKey     
    policy: (MSPolicy*) policy     
    policies: (NSArray*) policies     
    callbackURL: (NSString*) callbackURL     
    callbackMails: (NSString*) callbackMails     
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys     
    validateCode: (NSString*) validateCode     
    workflow: (NSString*) workflow;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

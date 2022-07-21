#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSMessageSetList.h"


@interface MSMessageSetInfo : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* callbackRedirectURL;  
@property(nonatomic) NSString* callbackRedirectURLTargetWindow;  
@property(nonatomic) NSArray* messages;  
- (id) code: (NSString*) code     
    status: (NSString*) status     
    callbackRedirectURL: (NSString*) callbackRedirectURL     
    callbackRedirectURLTargetWindow: (NSString*) callbackRedirectURLTargetWindow     
    messages: (NSArray*) messages;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

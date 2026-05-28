#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSRecipient.h"


@interface MSSignerWorkflow : SWGObject

@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSArray* recipients;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
- (id) groupCode: (NSString*) groupCode     
    userCode: (NSString*) userCode     
    recipients: (NSArray*) recipients     
    code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

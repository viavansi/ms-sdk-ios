#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMessageSetList : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* recipientStatus;  
@property(nonatomic) NSString* auditTrailPage;  
@property(nonatomic) NSString* recipientKey;  
@property(nonatomic) NSString* languageId;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    link: (NSString*) link     
    status: (NSString*) status     
    recipientStatus: (NSString*) recipientStatus     
    auditTrailPage: (NSString*) auditTrailPage     
    recipientKey: (NSString*) recipientKey     
    languageId: (NSString*) languageId;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

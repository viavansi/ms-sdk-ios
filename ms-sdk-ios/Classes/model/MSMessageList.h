#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMessageList : SWGObject

@property(nonatomic) NSString* messageCode;  /* (since 3.4.8, internal) message code  */
@property(nonatomic) NSString* status;  /* (since 3.4.8, internal) message status  */
@property(nonatomic) NSString* userCode;  /* (since 3.4.8, internal) user code  */
@property(nonatomic) NSString* groupCode;  /* (since 3.4.8, internal) group code  */
@property(nonatomic) NSString* templateCode;  /* (since 3.4.8, internal) template code  */
@property(nonatomic) NSNumber* creationDate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* externalCode;  /* (since 3.5.120, internal) external code  */
@property(nonatomic) NSString* externalStatus;  /* (since 3.5.120, internal) external status  */
@property(nonatomic) NSString* setCode;  /* (since 3.6.43, internal) external code  */
@property(nonatomic) NSString* title;  /* (since 3.7.0, internal) title  */
@property(nonatomic) NSString* _description;  /* (since 3.7.0, internal) description  */
@property(nonatomic) NSString* auditTrailUrl;  /* (since 3.7.0, internal) audit trail url  */
- (id) messageCode: (NSString*) messageCode     
    status: (NSString*) status     
    userCode: (NSString*) userCode     
    groupCode: (NSString*) groupCode     
    templateCode: (NSString*) templateCode     
    creationDate: (NSNumber*) creationDate     
    externalCode: (NSString*) externalCode     
    externalStatus: (NSString*) externalStatus     
    setCode: (NSString*) setCode     
    title: (NSString*) title     
    _description: (NSString*) _description     
    auditTrailUrl: (NSString*) auditTrailUrl;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

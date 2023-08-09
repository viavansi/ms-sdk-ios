#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSSetListUserGroup : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* recipients;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSNumber* associatedMessageNum;  
@property(nonatomic) NSString* associatedMessageCode;  
@property(nonatomic) SWGDate* creationDate;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    userCode: (NSString*) userCode     
    recipients: (NSString*) recipients     
    status: (NSString*) status     
    associatedMessageNum: (NSNumber*) associatedMessageNum     
    associatedMessageCode: (NSString*) associatedMessageCode     
    creationDate: (SWGDate*) creationDate;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

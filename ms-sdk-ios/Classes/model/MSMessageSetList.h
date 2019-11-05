#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMessageSetList : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* recipientStatus;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    link: (NSString*) link     
    status: (NSString*) status     
    recipientStatus: (NSString*) recipientStatus;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

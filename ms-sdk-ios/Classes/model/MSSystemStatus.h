#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSystemStatus : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* message;  
@property(nonatomic) NSString* notification;  
- (id) name: (NSString*) name     
    _description: (NSString*) _description     
    status: (NSString*) status     
    message: (NSString*) message     
    notification: (NSString*) notification;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

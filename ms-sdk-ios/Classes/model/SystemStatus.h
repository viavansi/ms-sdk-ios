#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Status.h"


@interface SystemStatus : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) Status* status;  
@property(nonatomic) NSString* message;  
- (id) name: (NSString*) name     
    _description: (NSString*) _description     
    status: (Status*) status     
    message: (NSString*) message;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

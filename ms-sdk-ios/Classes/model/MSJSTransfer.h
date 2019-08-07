#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSJSTransfer : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* status;  
@property(nonatomic) SWGDate* transferDate;  
@property(nonatomic) NSString* error;  
@property(nonatomic) NSString* response;  
- (id) name: (NSString*) name     
    status: (NSString*) status     
    transferDate: (SWGDate*) transferDate     
    error: (NSString*) error     
    response: (NSString*) response;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

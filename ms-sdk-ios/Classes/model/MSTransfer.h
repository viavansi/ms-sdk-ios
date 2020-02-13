#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "SWGDate.h"


@interface MSTransfer : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* status;  
@property(nonatomic) SWGDate* transferDate;  
@property(nonatomic) NSString* error;  
@property(nonatomic) NSString* response;  
@property(nonatomic) NSArray* metadataList;  
- (id) name: (NSString*) name     
    status: (NSString*) status     
    transferDate: (SWGDate*) transferDate     
    error: (NSString*) error     
    response: (NSString*) response     
    metadataList: (NSArray*) metadataList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

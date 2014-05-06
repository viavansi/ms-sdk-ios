#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGErrorResponse : SWGObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSNumber* status;  

@property(nonatomic) NSString* errorCode;  

@property(nonatomic) NSString* error;  

- (id) _id: (NSString*) _id
     status: (NSNumber*) status
     errorCode: (NSString*) errorCode
     error: (NSString*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


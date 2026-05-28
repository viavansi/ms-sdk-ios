#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSNumber.h"
#import "MSJSMatiVerifData.h"
#import "MSJSMatiStepError.h"


@interface MSJSMatiStep : SWGObject

@property(nonatomic) MSNumber* status;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) MSJSMatiVerifData* data;  
@property(nonatomic) MSJSMatiStepError* error;  
- (id) status: (MSNumber*) status     
    _id: (NSString*) _id     
    data: (MSJSMatiVerifData*) data     
    error: (MSJSMatiStepError*) error;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

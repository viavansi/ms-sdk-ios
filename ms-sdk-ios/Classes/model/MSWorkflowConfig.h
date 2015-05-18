#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSStatus.h"


@interface MSWorkflowConfig : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSArray* status;  
- (id) code: (NSString*) code     
    _description: (NSString*) _description     
    status: (NSArray*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

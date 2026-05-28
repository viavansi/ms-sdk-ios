#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"


@interface MSFinalizeAction : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSArray* paramList;  
- (id) type: (NSString*) type     
    paramList: (NSArray*) paramList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

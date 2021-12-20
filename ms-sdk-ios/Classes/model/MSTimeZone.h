#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTimeZone : SWGObject

@property(nonatomic) NSString* displayName;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSNumber* dstsavings;  
@property(nonatomic) NSNumber* rawOffset;  
- (id) displayName: (NSString*) displayName     
    _id: (NSString*) _id     
    dstsavings: (NSNumber*) dstsavings     
    rawOffset: (NSNumber*) rawOffset;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

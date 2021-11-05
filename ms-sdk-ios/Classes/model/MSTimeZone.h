#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTimeZone : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* displayName;  
@property(nonatomic) NSNumber* dstsavings;  
@property(nonatomic) NSNumber* rawOffset;  
- (id) _id: (NSString*) _id     
    displayName: (NSString*) displayName     
    dstsavings: (NSNumber*) dstsavings     
    rawOffset: (NSNumber*) rawOffset;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

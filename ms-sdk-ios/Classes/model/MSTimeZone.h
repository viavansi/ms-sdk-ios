#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTimeZone : SWGObject

@property(nonatomic) NSNumber* dstsavings;  
@property(nonatomic) NSNumber* rawOffset;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* displayName;  
- (id) dstsavings: (NSNumber*) dstsavings     
    rawOffset: (NSNumber*) rawOffset     
    _id: (NSString*) _id     
    displayName: (NSString*) displayName;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

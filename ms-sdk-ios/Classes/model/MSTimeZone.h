#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTimeZone : SWGObject

@property(nonatomic) NSNumber* rawOffset;  
@property(nonatomic) NSNumber* dstsavings;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* displayName;  
- (id) rawOffset: (NSNumber*) rawOffset     
    dstsavings: (NSNumber*) dstsavings     
    _id: (NSString*) _id     
    displayName: (NSString*) displayName;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

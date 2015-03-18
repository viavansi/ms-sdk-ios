#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "EventHistory.h"


@interface Workflow : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* current;  
@property(nonatomic) NSString* next;  
@property(nonatomic) NSArray* history;  
@property(nonatomic) SWGDate* initiate;  
@property(nonatomic) SWGDate* lastUpdated;  
@property(nonatomic) SWGDate* expires;  
- (id) code: (NSString*) code     
    current: (NSString*) current     
    next: (NSString*) next     
    history: (NSArray*) history     
    initiate: (SWGDate*) initiate     
    lastUpdated: (SWGDate*) lastUpdated     
    expires: (SWGDate*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSEventHistory.h"


@interface MSWorkflow : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* current;  
@property(nonatomic) NSString* next;  
@property(nonatomic) NSArray* history;  
@property(nonatomic) SWGDate* initiate;  
@property(nonatomic) SWGDate* lastUpdated;  
@property(nonatomic) SWGDate* expires;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* referenceCode;  
@property(nonatomic) NSNumber* step;  
- (id) code: (NSString*) code     
    current: (NSString*) current     
    next: (NSString*) next     
    history: (NSArray*) history     
    initiate: (SWGDate*) initiate     
    lastUpdated: (SWGDate*) lastUpdated     
    expires: (SWGDate*) expires     
    type: (NSString*) type     
    referenceCode: (NSString*) referenceCode     
    step: (NSNumber*) step;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

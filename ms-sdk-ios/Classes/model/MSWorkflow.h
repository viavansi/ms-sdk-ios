#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSEventHistory.h"


@interface MSWorkflow : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* current;  
@property(nonatomic) NSString* next;  
@property(nonatomic) NSArray* history;  
@property(nonatomic) NSNumber* initiate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* lastUpdated;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* expires;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* referenceCode;  
@property(nonatomic) NSNumber* step;  
@property(nonatomic) NSNumber* steps;  
@property(nonatomic) NSString* nextMessageCode;  
@property(nonatomic) NSString* previousMessageCode;  
@property(nonatomic) NSNumber* workflowFinished;  
- (id) code: (NSString*) code     
    current: (NSString*) current     
    next: (NSString*) next     
    history: (NSArray*) history     
    initiate: (NSNumber*) initiate     
    lastUpdated: (NSNumber*) lastUpdated     
    expires: (NSNumber*) expires     
    type: (NSString*) type     
    referenceCode: (NSString*) referenceCode     
    step: (NSNumber*) step     
    steps: (NSNumber*) steps     
    nextMessageCode: (NSString*) nextMessageCode     
    previousMessageCode: (NSString*) previousMessageCode     
    workflowFinished: (NSNumber*) workflowFinished;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

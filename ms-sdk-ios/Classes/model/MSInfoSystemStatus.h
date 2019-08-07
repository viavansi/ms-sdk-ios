#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSSystemInfo.h"
#import "SWGDate.h"
#import "MSSystemStatus.h"


@interface MSInfoSystemStatus : SWGObject

@property(nonatomic) SWGDate* date;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSArray* info;  
@property(nonatomic) MSSystemInfo* system;  
@property(nonatomic) NSDictionary* notifications;  
@property(nonatomic) NSString* status;  
- (id) date: (SWGDate*) date     
    name: (NSString*) name     
    info: (NSArray*) info     
    system: (MSSystemInfo*) system     
    notifications: (NSDictionary*) notifications     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

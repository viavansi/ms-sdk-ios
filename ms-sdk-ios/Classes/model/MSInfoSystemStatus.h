#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSSystemInfo.h"
#import "MSSystemStatus.h"


@interface MSInfoSystemStatus : SWGObject

@property(nonatomic) NSNumber* date;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* name;  
@property(nonatomic) NSArray* info;  
@property(nonatomic) MSSystemInfo* system;  
@property(nonatomic) NSDictionary* notifications;  
@property(nonatomic) NSString* status;  
- (id) date: (NSNumber*) date     
    name: (NSString*) name     
    info: (NSArray*) info     
    system: (MSSystemInfo*) system     
    notifications: (NSDictionary*) notifications     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

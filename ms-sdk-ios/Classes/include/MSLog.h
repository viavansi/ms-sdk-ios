#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSLog : SWGObject

@property(nonatomic) NSString* user;  
@property(nonatomic) NSString* device;  
@property(nonatomic) NSString* msg;  
@property(nonatomic) NSString* level;  
- (id) user: (NSString*) user     
    device: (NSString*) device     
    msg: (NSString*) msg     
    level: (NSString*) level;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

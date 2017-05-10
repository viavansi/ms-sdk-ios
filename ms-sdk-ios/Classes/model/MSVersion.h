#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSVersion : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSNumber* showUpdate;  
@property(nonatomic) NSString* installURL;  
@property(nonatomic) NSString* installMessage;  
- (id) type: (NSString*) type     
    version: (NSString*) version     
    showUpdate: (NSNumber*) showUpdate     
    installURL: (NSString*) installURL     
    installMessage: (NSString*) installMessage;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

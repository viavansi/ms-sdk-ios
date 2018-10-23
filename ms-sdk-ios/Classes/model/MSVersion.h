#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSVersion : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSNumber* showUpdate;  
@property(nonatomic) NSString* installURL;  
@property(nonatomic) NSString* installMessage;  
@property(nonatomic) NSString* iconURL;  
- (id) type: (NSString*) type     
    version: (NSString*) version     
    showUpdate: (NSNumber*) showUpdate     
    installURL: (NSString*) installURL     
    installMessage: (NSString*) installMessage     
    iconURL: (NSString*) iconURL;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

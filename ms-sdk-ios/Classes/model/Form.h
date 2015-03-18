#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "FormNestedValue.h"
#import "Setting.h"
#import "FormValue.h"
#import "Container.h"


@interface Form : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSString* templateCode;  
@property(nonatomic) NSArray* containers;  
@property(nonatomic) Setting* setting;  
@property(nonatomic) NSArray* values;  
@property(nonatomic) NSArray* nestedValues;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description     
    version: (NSString*) version     
    templateCode: (NSString*) templateCode     
    containers: (NSArray*) containers     
    setting: (Setting*) setting     
    values: (NSArray*) values     
    nestedValues: (NSArray*) nestedValues;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

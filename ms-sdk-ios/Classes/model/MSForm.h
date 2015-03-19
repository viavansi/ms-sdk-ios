#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSFormValue.h"
#import "MSFormNestedValue.h"
#import "MSSetting.h"
#import "MSContainer.h"


@interface MSForm : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSString* templateCode;  
@property(nonatomic) NSArray* containers;  
@property(nonatomic) MSSetting* setting;  
@property(nonatomic) NSArray* values;  
@property(nonatomic) NSArray* nestedValues;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description     
    version: (NSString*) version     
    templateCode: (NSString*) templateCode     
    containers: (NSArray*) containers     
    setting: (MSSetting*) setting     
    values: (NSArray*) values     
    nestedValues: (NSArray*) nestedValues;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

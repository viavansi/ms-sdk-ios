#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGFormValue.h"
#import "SWGSetting.h"
#import "SWGContainer.h"
#import "SWGFormNestedValue.h"

@interface SWGForm : SWGObject

@property(nonatomic) NSString* code;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSString* version;  

@property(nonatomic) NSString* templateCode;  

@property(nonatomic) NSArray* containers;  

@property(nonatomic) SWGSetting* setting;  

@property(nonatomic) NSArray* values;  

@property(nonatomic) NSArray* nestedValues;  

- (id) code: (NSString*) code
     title: (NSString*) title
     version: (NSString*) version
     templateCode: (NSString*) templateCode
     containers: (NSArray*) containers
     setting: (SWGSetting*) setting
     values: (NSArray*) values
     nestedValues: (NSArray*) nestedValues;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


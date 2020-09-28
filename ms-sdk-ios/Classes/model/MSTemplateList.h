#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTemplateList : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSNumber* creationDate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* groups;  
@property(nonatomic) NSNumber* onlyWacom;  
@property(nonatomic) NSString* version;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description     
    creationDate: (NSNumber*) creationDate     
    groups: (NSString*) groups     
    onlyWacom: (NSNumber*) onlyWacom     
    version: (NSString*) version;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSForm.h"


@interface MSTemplate : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSNumber* creationDate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) MSForm* form;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSString* type;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description     
    creationDate: (NSNumber*) creationDate     
    form: (MSForm*) form     
    version: (NSString*) version     
    type: (NSString*) type;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

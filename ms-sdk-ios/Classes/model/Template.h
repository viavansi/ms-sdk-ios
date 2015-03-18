#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Form.h"
#import "SWGDate.h"


@interface Template : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) SWGDate* creationDate;  
@property(nonatomic) Form* form;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description     
    creationDate: (SWGDate*) creationDate     
    form: (Form*) form;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

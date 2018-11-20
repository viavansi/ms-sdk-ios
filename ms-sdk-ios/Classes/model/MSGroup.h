#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSGroup : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    _description: (NSString*) _description;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

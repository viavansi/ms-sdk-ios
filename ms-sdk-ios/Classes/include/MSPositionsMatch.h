#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSPositionsMatch : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSNumber* xoffset;  
@property(nonatomic) NSNumber* yoffset;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSNumber* height;  
@property(nonatomic) NSNumber* forEvidence;  
@property(nonatomic) NSNumber* breakLines;  
- (id) _id: (NSString*) _id     
    text: (NSString*) text     
    xoffset: (NSNumber*) xoffset     
    yoffset: (NSNumber*) yoffset     
    width: (NSNumber*) width     
    height: (NSNumber*) height     
    forEvidence: (NSNumber*) forEvidence     
    breakLines: (NSNumber*) breakLines;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

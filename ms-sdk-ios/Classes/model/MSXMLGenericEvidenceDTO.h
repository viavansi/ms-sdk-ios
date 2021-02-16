#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSGenericEvidencePropertyDTO.h"


@interface MSXMLGenericEvidenceDTO : SWGObject

@property(nonatomic) NSArray* properties;  
@property(nonatomic) NSString* providerId;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* icon;  
- (id) properties: (NSArray*) properties     
    providerId: (NSString*) providerId     
    _description: (NSString*) _description     
    icon: (NSString*) icon;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

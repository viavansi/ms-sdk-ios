#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSVerifierOidDTO.h"


@interface MSVerifierOidDTO : SWGObject

@property(nonatomic) NSString* oid;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSArray* values;  
@property(nonatomic) NSArray* childOids;  
@property(nonatomic) NSNumber* objectIdentifier;  
- (id) oid: (NSString*) oid     
    _description: (NSString*) _description     
    values: (NSArray*) values     
    childOids: (NSArray*) childOids     
    objectIdentifier: (NSNumber*) objectIdentifier;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

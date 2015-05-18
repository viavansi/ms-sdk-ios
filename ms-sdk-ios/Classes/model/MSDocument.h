#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSItem.h"


@interface MSDocument : SWGObject

@property(nonatomic) NSString* templateCode;  
@property(nonatomic) NSString* templateReference;  
@property(nonatomic) NSString* draftedCode;  
@property(nonatomic) NSString* draftedReference;  
@property(nonatomic) NSString* signedCode;  
@property(nonatomic) NSString* signedID;  
@property(nonatomic) NSString* signedReference;  
@property(nonatomic) NSString* templateType;  
@property(nonatomic) NSNumber* formRequired;  
@property(nonatomic) NSNumber* formDisabled;  
@property(nonatomic) NSArray* items;  
- (id) templateCode: (NSString*) templateCode     
    templateReference: (NSString*) templateReference     
    draftedCode: (NSString*) draftedCode     
    draftedReference: (NSString*) draftedReference     
    signedCode: (NSString*) signedCode     
    signedID: (NSString*) signedID     
    signedReference: (NSString*) signedReference     
    templateType: (NSString*) templateType     
    formRequired: (NSNumber*) formRequired     
    formDisabled: (NSNumber*) formDisabled     
    items: (NSArray*) items;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

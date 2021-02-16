#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSConfigPolicyDTO : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* url;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* digestAlgorithm;  
@property(nonatomic) NSArray* digestValue;  
@property(nonatomic) NSString* contentHintsDescription;  
@property(nonatomic) NSString* contentHintsType;  
- (id) _id: (NSString*) _id     
    url: (NSString*) url     
    _description: (NSString*) _description     
    digestAlgorithm: (NSString*) digestAlgorithm     
    digestValue: (NSArray*) digestValue     
    contentHintsDescription: (NSString*) contentHintsDescription     
    contentHintsType: (NSString*) contentHintsType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

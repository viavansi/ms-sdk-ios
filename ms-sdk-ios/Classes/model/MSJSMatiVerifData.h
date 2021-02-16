#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSNumber.h"
#import "MSJSMatiVerificationFieldData.h"


@interface MSJSMatiVerifData : SWGObject

@property(nonatomic) MSNumber* score;  
@property(nonatomic) NSArray* data;  
@property(nonatomic) NSString* videoUrl;  
@property(nonatomic) NSString* spriteUrl;  
@property(nonatomic) NSString* selfieUrl;  
- (id) score: (MSNumber*) score     
    data: (NSArray*) data     
    videoUrl: (NSString*) videoUrl     
    spriteUrl: (NSString*) spriteUrl     
    selfieUrl: (NSString*) selfieUrl;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSStamperDTO.h"


@interface MSConfigPadesDTO : SWGObject

@property(nonatomic) MSStamperDTO* stamper;  
@property(nonatomic) NSString* certificationLevel;  
@property(nonatomic) NSString* password;  
- (id) stamper: (MSStamperDTO*) stamper     
    certificationLevel: (NSString*) certificationLevel     
    password: (NSString*) password;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

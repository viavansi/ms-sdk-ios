#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPosition.h"
#import "MSPositionsMatch.h"


@interface MSPdfText : SWGObject

@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSArray* positionsMatch;  
@property(nonatomic) NSNumber* size;  
- (id) positions: (NSArray*) positions     
    positionsMatch: (NSArray*) positionsMatch     
    size: (NSNumber*) size;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSTimeZone.h"


@interface MSStamperDTO : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* rotation;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSNumber* height;  
@property(nonatomic) NSNumber* getxAxis;  
@property(nonatomic) NSNumber* getyAxis;  
@property(nonatomic) NSNumber* page;  
@property(nonatomic) NSString* csvPath;  
@property(nonatomic) NSString* textLine1;  
@property(nonatomic) NSString* textLine2;  
@property(nonatomic) NSString* textLine3;  
@property(nonatomic) NSArray* image;  
@property(nonatomic) NSArray* logo;  
@property(nonatomic) SWGDate* signingDate;  
@property(nonatomic) NSNumber* transparent;  
@property(nonatomic) MSTimeZone* timeZone;  
- (id) type: (NSString*) type     
    rotation: (NSString*) rotation     
    width: (NSNumber*) width     
    height: (NSNumber*) height     
    getxAxis: (NSNumber*) getxAxis     
    getyAxis: (NSNumber*) getyAxis     
    page: (NSNumber*) page     
    csvPath: (NSString*) csvPath     
    textLine1: (NSString*) textLine1     
    textLine2: (NSString*) textLine2     
    textLine3: (NSString*) textLine3     
    image: (NSArray*) image     
    logo: (NSArray*) logo     
    signingDate: (SWGDate*) signingDate     
    transparent: (NSNumber*) transparent     
    timeZone: (MSTimeZone*) timeZone;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

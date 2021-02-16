#import "SWGDate.h"
#import "MSAuditTrailInformationLabel.h"

@implementation MSAuditTrailInformationLabel

@synthesize textContent = _textContent;
@synthesize typeOfLabel = _typeOfLabel;

-(id)textContent: (NSString*) textContent
    typeOfLabel: (NSString*) typeOfLabel
    
{
    _textContent = textContent;
    _typeOfLabel = typeOfLabel;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _textContent = dict[@"textContent"];
        
        _typeOfLabel = dict[@"typeOfLabel"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_textContent != nil) dict[@"textContent"] = _textContent ;
        
    
    
            if(_typeOfLabel != nil) dict[@"typeOfLabel"] = _typeOfLabel ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

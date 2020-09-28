#import "SWGDate.h"
#import "MSAuditTrailTemporalInfo.h"

@implementation MSAuditTrailTemporalInfo

@synthesize formattedDate = _formattedDate;
@synthesize text = _text;

-(id)formattedDate: (NSString*) formattedDate
    text: (NSString*) text
    
{
    _formattedDate = formattedDate;
    _text = text;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _formattedDate = dict[@"formattedDate"];
        
        _text = dict[@"text"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_formattedDate != nil) dict[@"formattedDate"] = _formattedDate ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

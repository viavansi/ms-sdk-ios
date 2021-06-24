#import "SWGDate.h"
#import "MSAuditTrailTemporalInfo.h"

@implementation MSAuditTrailTemporalInfo

@synthesize formattedDate = _formattedDate;
@synthesize text = _text;
@synthesize status = _status;

-(id)formattedDate: (NSString*) formattedDate
    text: (NSString*) text
    status: (NSString*) status
    
{
    _formattedDate = formattedDate;
    _text = text;
    _status = status;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _formattedDate = dict[@"formattedDate"];
        
        _text = dict[@"text"];
        
        _status = dict[@"status"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_formattedDate != nil) dict[@"formattedDate"] = _formattedDate ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSOtpBatchPrepare.h"

@implementation MSOtpBatchPrepare

@synthesize operationCode = _operationCode;
@synthesize expires = _expires;

-(id)operationCode: (NSString*) operationCode
    expires: (NSString*) expires
    
{
    _operationCode = operationCode;
    _expires = expires;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _operationCode = dict[@"operationCode"];
        
        _expires = dict[@"expires"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_operationCode != nil) dict[@"operationCode"] = _operationCode ;
        
    
    
            if(_expires != nil) dict[@"expires"] = _expires ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

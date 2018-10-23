#import "SWGDate.h"
#import "MSWorkflowTask.h"

@implementation MSWorkflowTask

@synthesize code = _code;
@synthesize finalStatus = _finalStatus;
@synthesize cacheName = _cacheName;
@synthesize classRef = _classRef;

-(id)code: (NSString*) code
    finalStatus: (NSNumber*) finalStatus
    cacheName: (NSString*) cacheName
    classRef: (NSString*) classRef
    
{
    _code = code;
    _finalStatus = finalStatus;
    _cacheName = cacheName;
    _classRef = classRef;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _finalStatus = dict[@"finalStatus"];
        
        _cacheName = dict[@"cacheName"];
        
        _classRef = dict[@"classRef"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_finalStatus != nil) dict[@"finalStatus"] = _finalStatus ;
        
    
    
            if(_cacheName != nil) dict[@"cacheName"] = _cacheName ;
        
    
    
            if(_classRef != nil) dict[@"classRef"] = _classRef ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

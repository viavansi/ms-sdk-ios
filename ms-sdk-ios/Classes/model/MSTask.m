#import "SWGDate.h"
#import "MSTask.h"

@implementation MSTask

-(id)code: (NSString*) code
    finalStatus: (NSNumber*) finalStatus
    numThreads: (NSNumber*) numThreads
    cacheName: (NSString*) cacheName
    classRef: (NSString*) classRef
    
{
    _code = code;
    _finalStatus = finalStatus;
    _numThreads = numThreads;
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
        
        _numThreads = dict[@"numThreads"];
        
        _cacheName = dict[@"cacheName"];
        
        _classRef = dict[@"classRef"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_finalStatus != nil) dict[@"finalStatus"] = _finalStatus ;
        
    
    
            if(_numThreads != nil) dict[@"numThreads"] = _numThreads ;
        
    
    
            if(_cacheName != nil) dict[@"cacheName"] = _cacheName ;
        
    
    
            if(_classRef != nil) dict[@"classRef"] = _classRef ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

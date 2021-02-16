#import "SWGDate.h"
#import "MSJSMati.h"

@implementation MSJSMati

@synthesize eventName = _eventName;
@synthesize details = _details;
@synthesize identityStatus = _identityStatus;
@synthesize matiDashboardUrl = _matiDashboardUrl;
@synthesize metadata = _metadata;
@synthesize resource = _resource;
@synthesize status = _status;
@synthesize timestamp = _timestamp;
@synthesize step = _step;
@synthesize flowId = _flowId;

-(id)eventName: (NSString*) eventName
    details: (MSJSMatiDetails*) details
    identityStatus: (NSString*) identityStatus
    matiDashboardUrl: (NSString*) matiDashboardUrl
    metadata: (NSDictionary*) metadata
    resource: (NSString*) resource
    status: (NSString*) status
    timestamp: (NSString*) timestamp
    step: (MSJSMatiStep*) step
    flowId: (NSString*) flowId
    
{
    _eventName = eventName;
    _details = details;
    _identityStatus = identityStatus;
    _matiDashboardUrl = matiDashboardUrl;
    _metadata = metadata;
    _resource = resource;
    _status = status;
    _timestamp = timestamp;
    _step = step;
    _flowId = flowId;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _eventName = dict[@"eventName"];
        
        
        
        id details_dict = dict[@"details"];
        
        if(details_dict != nil)
            _details = [[MSJSMatiDetails  alloc]initWithValues:details_dict];
        
        
        _identityStatus = dict[@"identityStatus"];
        
        _matiDashboardUrl = dict[@"matiDashboardUrl"];
        
        _metadata = dict[@"metadata"];
        
        _resource = dict[@"resource"];
        
        _status = dict[@"status"];
        
        _timestamp = dict[@"timestamp"];
        
        
        
        id step_dict = dict[@"step"];
        
        if(step_dict != nil)
            _step = [[MSJSMatiStep  alloc]initWithValues:step_dict];
        
        
        _flowId = dict[@"flowId"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_eventName != nil) dict[@"eventName"] = _eventName ;
        
    
    
    if(_details != nil){
        if([_details isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_details count] ; i++ ) {
				MSJSMatiDetails *details = [[MSJSMatiDetails alloc]init];
				details = [(NSArray*)_details objectAtIndex:i];
                [array addObject:[(SWGObject*)details asDictionary]];
            }
            dict[@"details"] = array;
        }
        else if(_details && [_details isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_details toString];
            if(dateString){
                dict[@"details"] = dateString;
            }
        }
        else {
        
            if(_details != nil) dict[@"details"] = [(SWGObject*)_details asDictionary];
        
        }
    }
    
    
    
            if(_identityStatus != nil) dict[@"identityStatus"] = _identityStatus ;
        
    
    
            if(_matiDashboardUrl != nil) dict[@"matiDashboardUrl"] = _matiDashboardUrl ;
        
    
    
            if(_metadata != nil) dict[@"metadata"] = _metadata ;
        
    
    
            if(_resource != nil) dict[@"resource"] = _resource ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_timestamp != nil) dict[@"timestamp"] = _timestamp ;
        
    
    
    if(_step != nil){
        if([_step isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_step count] ; i++ ) {
				MSJSMatiStep *step = [[MSJSMatiStep alloc]init];
				step = [(NSArray*)_step objectAtIndex:i];
                [array addObject:[(SWGObject*)step asDictionary]];
            }
            dict[@"step"] = array;
        }
        else if(_step && [_step isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_step toString];
            if(dateString){
                dict[@"step"] = dateString;
            }
        }
        else {
        
            if(_step != nil) dict[@"step"] = [(SWGObject*)_step asDictionary];
        
        }
    }
    
    
    
            if(_flowId != nil) dict[@"flowId"] = _flowId ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

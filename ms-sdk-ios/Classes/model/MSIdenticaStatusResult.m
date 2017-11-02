#import "SWGDate.h"
#import "MSIdenticaStatusResult.h"

@implementation MSIdenticaStatusResult

@synthesize operationStatus = _operationStatus;
@synthesize responseCode = _responseCode;
@synthesize responseMessage = _responseMessage;

-(id)operationStatus: (MSIdenticaOperationStatus*) operationStatus
    responseCode: (NSString*) responseCode
    responseMessage: (NSString*) responseMessage
    
{
    _operationStatus = operationStatus;
    _responseCode = responseCode;
    _responseMessage = responseMessage;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id operationStatus_dict = dict[@"operationStatus"];
        
        if(operationStatus_dict != nil)
            _operationStatus = [[MSIdenticaOperationStatus  alloc]initWithValues:operationStatus_dict];
        
        
        _responseCode = dict[@"responseCode"];
        
        _responseMessage = dict[@"responseMessage"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_operationStatus != nil){
        if([_operationStatus isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_operationStatus count] ; i++ ) {
				MSIdenticaOperationStatus *operationStatus = [[MSIdenticaOperationStatus alloc]init];
				operationStatus = [(NSArray*)_operationStatus objectAtIndex:i];
                [array addObject:[(SWGObject*)operationStatus asDictionary]];
            }
            dict[@"operationStatus"] = array;
        }
        else if(_operationStatus && [_operationStatus isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_operationStatus toString];
            if(dateString){
                dict[@"operationStatus"] = dateString;
            }
        }
        else {
        
            if(_operationStatus != nil) dict[@"operationStatus"] = [(SWGObject*)_operationStatus asDictionary];
        
        }
    }
    
    
    
            if(_responseCode != nil) dict[@"responseCode"] = _responseCode ;
        
    
    
            if(_responseMessage != nil) dict[@"responseMessage"] = _responseMessage ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

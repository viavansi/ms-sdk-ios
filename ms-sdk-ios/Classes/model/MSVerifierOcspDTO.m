#import "SWGDate.h"
#import "MSVerifierOcspDTO.h"

@implementation MSVerifierOcspDTO

@synthesize responseDate = _responseDate;
@synthesize responseOcsp = _responseOcsp;

-(id)responseDate: (SWGDate*) responseDate
    responseOcsp: (NSString*) responseOcsp
    
{
    _responseDate = responseDate;
    _responseOcsp = responseOcsp;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id responseDate_dict = dict[@"responseDate"];
        
        if(responseDate_dict != nil)
            _responseDate = [[SWGDate  alloc]initWithValues:responseDate_dict];
        
        
        _responseOcsp = dict[@"responseOcsp"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_responseDate != nil){
        if([_responseDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_responseDate count] ; i++ ) {
				SWGDate *responseDate = [[SWGDate alloc]init];
				responseDate = [(NSArray*)_responseDate objectAtIndex:i];
                [array addObject:[(SWGObject*)responseDate asDictionary]];
            }
            dict[@"responseDate"] = array;
        }
        else if(_responseDate && [_responseDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_responseDate toString];
            if(dateString){
                dict[@"responseDate"] = dateString;
            }
        }
        else {
        
            if(_responseDate != nil) dict[@"responseDate"] = [(SWGObject*)_responseDate asDictionary];
        
        }
    }
    
    
    
            if(_responseOcsp != nil) dict[@"responseOcsp"] = _responseOcsp ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

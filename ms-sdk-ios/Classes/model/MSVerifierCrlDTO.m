#import "SWGDate.h"
#import "MSVerifierCrlDTO.h"

@implementation MSVerifierCrlDTO

@synthesize type = _type;
@synthesize version = _version;
@synthesize issuer = _issuer;
@synthesize signingAlgorithm = _signingAlgorithm;
@synthesize signingOID = _signingOID;
@synthesize nextUpdate = _nextUpdate;
@synthesize thisUpdate = _thisUpdate;

-(id)type: (NSString*) type
    version: (NSString*) version
    issuer: (NSString*) issuer
    signingAlgorithm: (NSString*) signingAlgorithm
    signingOID: (NSString*) signingOID
    nextUpdate: (SWGDate*) nextUpdate
    thisUpdate: (SWGDate*) thisUpdate
    
{
    _type = type;
    _version = version;
    _issuer = issuer;
    _signingAlgorithm = signingAlgorithm;
    _signingOID = signingOID;
    _nextUpdate = nextUpdate;
    _thisUpdate = thisUpdate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _version = dict[@"version"];
        
        _issuer = dict[@"issuer"];
        
        _signingAlgorithm = dict[@"signingAlgorithm"];
        
        _signingOID = dict[@"signingOID"];
        
        
        
        id nextUpdate_dict = dict[@"nextUpdate"];
        
        if(nextUpdate_dict != nil)
            _nextUpdate = [[SWGDate  alloc]initWithValues:nextUpdate_dict];
        
        
        
        
        id thisUpdate_dict = dict[@"thisUpdate"];
        
        if(thisUpdate_dict != nil)
            _thisUpdate = [[SWGDate  alloc]initWithValues:thisUpdate_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_issuer != nil) dict[@"issuer"] = _issuer ;
        
    
    
            if(_signingAlgorithm != nil) dict[@"signingAlgorithm"] = _signingAlgorithm ;
        
    
    
            if(_signingOID != nil) dict[@"signingOID"] = _signingOID ;
        
    
    
    if(_nextUpdate != nil){
        if([_nextUpdate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_nextUpdate count] ; i++ ) {
				SWGDate *nextUpdate = [[SWGDate alloc]init];
				nextUpdate = [(NSArray*)_nextUpdate objectAtIndex:i];
                [array addObject:[(SWGObject*)nextUpdate asDictionary]];
            }
            dict[@"nextUpdate"] = array;
        }
        else if(_nextUpdate && [_nextUpdate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_nextUpdate toString];
            if(dateString){
                dict[@"nextUpdate"] = dateString;
            }
        }
        else {
        
            if(_nextUpdate != nil) dict[@"nextUpdate"] = [(SWGObject*)_nextUpdate asDictionary];
        
        }
    }
    
    
    
    if(_thisUpdate != nil){
        if([_thisUpdate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_thisUpdate count] ; i++ ) {
				SWGDate *thisUpdate = [[SWGDate alloc]init];
				thisUpdate = [(NSArray*)_thisUpdate objectAtIndex:i];
                [array addObject:[(SWGObject*)thisUpdate asDictionary]];
            }
            dict[@"thisUpdate"] = array;
        }
        else if(_thisUpdate && [_thisUpdate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_thisUpdate toString];
            if(dateString){
                dict[@"thisUpdate"] = dateString;
            }
        }
        else {
        
            if(_thisUpdate != nil) dict[@"thisUpdate"] = [(SWGObject*)_thisUpdate asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

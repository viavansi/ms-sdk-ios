#import "SWGDate.h"
#import "MSCertificate.h"

@implementation MSCertificate

@synthesize type = _type;
@synthesize encoded = _encoded;
@synthesize publicKey = _publicKey;

-(id)type: (NSString*) type
    encoded: (NSArray*) encoded
    publicKey: (MSPublicKey*) publicKey
    
{
    _type = type;
    _encoded = encoded;
    _publicKey = publicKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _encoded = dict[@"encoded"];
        
        
        
        id publicKey_dict = dict[@"publicKey"];
        
        if(publicKey_dict != nil)
            _publicKey = [[MSPublicKey  alloc]initWithValues:publicKey_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_encoded != nil) dict[@"encoded"] = _encoded ;
        
    
    
    if(_publicKey != nil){
        if([_publicKey isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_publicKey count] ; i++ ) {
				MSPublicKey *publicKey = [[MSPublicKey alloc]init];
				publicKey = [(NSArray*)_publicKey objectAtIndex:i];
                [array addObject:[(SWGObject*)publicKey asDictionary]];
            }
            dict[@"publicKey"] = array;
        }
        else if(_publicKey && [_publicKey isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_publicKey toString];
            if(dateString){
                dict[@"publicKey"] = dateString;
            }
        }
        else {
        
            if(_publicKey != nil) dict[@"publicKey"] = [(SWGObject*)_publicKey asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

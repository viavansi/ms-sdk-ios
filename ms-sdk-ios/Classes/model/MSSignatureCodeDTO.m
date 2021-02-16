#import "SWGDate.h"
#import "MSSignatureCodeDTO.h"

@implementation MSSignatureCodeDTO

@synthesize custodyPathV1 = _custodyPathV1;
@synthesize config = _config;
@synthesize valid = _valid;
@synthesize custodyPath = _custodyPath;
@synthesize type = _type;
@synthesize packaging = _packaging;
@synthesize date = _date;
@synthesize cades = _cades;
@synthesize xades = _xades;
@synthesize pades = _pades;

-(id)custodyPathV1: (NSString*) custodyPathV1
    config: (MSConfigSignatureDTO*) config
    valid: (NSNumber*) valid
    custodyPath: (NSString*) custodyPath
    type: (NSString*) type
    packaging: (NSString*) packaging
    date: (SWGDate*) date
    cades: (NSNumber*) cades
    xades: (NSNumber*) xades
    pades: (NSNumber*) pades
    
{
    _custodyPathV1 = custodyPathV1;
    _config = config;
    _valid = valid;
    _custodyPath = custodyPath;
    _type = type;
    _packaging = packaging;
    _date = date;
    _cades = cades;
    _xades = xades;
    _pades = pades;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _custodyPathV1 = dict[@"custodyPathV1"];
        
        
        
        id config_dict = dict[@"config"];
        
        if(config_dict != nil)
            _config = [[MSConfigSignatureDTO  alloc]initWithValues:config_dict];
        
        
        _valid = dict[@"valid"];
        
        _custodyPath = dict[@"custodyPath"];
        
        _type = dict[@"type"];
        
        _packaging = dict[@"packaging"];
        
        
        
        id date_dict = dict[@"date"];
        
        if(date_dict != nil)
            _date = [[SWGDate  alloc]initWithValues:date_dict];
        
        
        _cades = dict[@"cades"];
        
        _xades = dict[@"xades"];
        
        _pades = dict[@"pades"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_custodyPathV1 != nil) dict[@"custodyPathV1"] = _custodyPathV1 ;
        
    
    
    if(_config != nil){
        if([_config isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_config count] ; i++ ) {
				MSConfigSignatureDTO *config = [[MSConfigSignatureDTO alloc]init];
				config = [(NSArray*)_config objectAtIndex:i];
                [array addObject:[(SWGObject*)config asDictionary]];
            }
            dict[@"config"] = array;
        }
        else if(_config && [_config isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_config toString];
            if(dateString){
                dict[@"config"] = dateString;
            }
        }
        else {
        
            if(_config != nil) dict[@"config"] = [(SWGObject*)_config asDictionary];
        
        }
    }
    
    
    
            if(_valid != nil) dict[@"valid"] = _valid ;
        
    
    
            if(_custodyPath != nil) dict[@"custodyPath"] = _custodyPath ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_packaging != nil) dict[@"packaging"] = _packaging ;
        
    
    
    if(_date != nil){
        if([_date isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_date count] ; i++ ) {
				SWGDate *date = [[SWGDate alloc]init];
				date = [(NSArray*)_date objectAtIndex:i];
                [array addObject:[(SWGObject*)date asDictionary]];
            }
            dict[@"date"] = array;
        }
        else if(_date && [_date isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_date toString];
            if(dateString){
                dict[@"date"] = dateString;
            }
        }
        else {
        
            if(_date != nil) dict[@"date"] = [(SWGObject*)_date asDictionary];
        
        }
    }
    
    
    
            if(_cades != nil) dict[@"cades"] = _cades ;
        
    
    
            if(_xades != nil) dict[@"xades"] = _xades ;
        
    
    
            if(_pades != nil) dict[@"pades"] = _pades ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

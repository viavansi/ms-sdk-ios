#import "SWGDate.h"
#import "MSDocumentCache.h"

@implementation MSDocumentCache

@synthesize templateReference = _templateReference;
@synthesize md5 = _md5;
@synthesize expires = _expires;

-(id)templateReference: (NSString*) templateReference
    md5: (NSString*) md5
    expires: (SWGDate*) expires
    
{
    _templateReference = templateReference;
    _md5 = md5;
    _expires = expires;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _templateReference = dict[@"templateReference"];
        
        _md5 = dict[@"md5"];
        
        
        
        id expires_dict = dict[@"expires"];
        
        if(expires_dict != nil)
            _expires = [[SWGDate  alloc]initWithValues:expires_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_templateReference != nil) dict[@"templateReference"] = _templateReference ;
        
    
    
            if(_md5 != nil) dict[@"md5"] = _md5 ;
        
    
    
    if(_expires != nil){
        if([_expires isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_expires count] ; i++ ) {
				SWGDate *expires = [[SWGDate alloc]init];
				expires = [(NSArray*)_expires objectAtIndex:i];
                [array addObject:[(SWGObject*)expires asDictionary]];
            }
            dict[@"expires"] = array;
        }
        else if(_expires && [_expires isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_expires toString];
            if(dateString){
                dict[@"expires"] = dateString;
            }
        }
        else {
        
            if(_expires != nil) dict[@"expires"] = [(SWGObject*)_expires asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

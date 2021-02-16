#import "SWGDate.h"
#import "MSJSMatiDetails.h"

@implementation MSJSMatiDetails

@synthesize age = _age;
@synthesize isDocumentExpired = _isDocumentExpired;

-(id)age: (MSJSMatiAge*) age
    isDocumentExpired: (MSJSMatiDocumentExpired*) isDocumentExpired
    
{
    _age = age;
    _isDocumentExpired = isDocumentExpired;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id age_dict = dict[@"age"];
        
        if(age_dict != nil)
            _age = [[MSJSMatiAge  alloc]initWithValues:age_dict];
        
        
        
        
        id isDocumentExpired_dict = dict[@"isDocumentExpired"];
        
        if(isDocumentExpired_dict != nil)
            _isDocumentExpired = [[MSJSMatiDocumentExpired  alloc]initWithValues:isDocumentExpired_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_age != nil){
        if([_age isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_age count] ; i++ ) {
				MSJSMatiAge *age = [[MSJSMatiAge alloc]init];
				age = [(NSArray*)_age objectAtIndex:i];
                [array addObject:[(SWGObject*)age asDictionary]];
            }
            dict[@"age"] = array;
        }
        else if(_age && [_age isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_age toString];
            if(dateString){
                dict[@"age"] = dateString;
            }
        }
        else {
        
            if(_age != nil) dict[@"age"] = [(SWGObject*)_age asDictionary];
        
        }
    }
    
    
    
    if(_isDocumentExpired != nil){
        if([_isDocumentExpired isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_isDocumentExpired count] ; i++ ) {
				MSJSMatiDocumentExpired *isDocumentExpired = [[MSJSMatiDocumentExpired alloc]init];
				isDocumentExpired = [(NSArray*)_isDocumentExpired objectAtIndex:i];
                [array addObject:[(SWGObject*)isDocumentExpired asDictionary]];
            }
            dict[@"isDocumentExpired"] = array;
        }
        else if(_isDocumentExpired && [_isDocumentExpired isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_isDocumentExpired toString];
            if(dateString){
                dict[@"isDocumentExpired"] = dateString;
            }
        }
        else {
        
            if(_isDocumentExpired != nil) dict[@"isDocumentExpired"] = [(SWGObject*)_isDocumentExpired asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

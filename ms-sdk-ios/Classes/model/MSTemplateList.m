#import "SWGDate.h"
#import "MSTemplateList.h"

@implementation MSTemplateList

@synthesize code = _code;
@synthesize title = _title;
@synthesize _description = __description;
@synthesize creationDate = _creationDate;
@synthesize groups = _groups;
@synthesize version = _version;

-(id)code: (NSString*) code
    title: (NSString*) title
    _description: (NSString*) _description
    creationDate: (SWGDate*) creationDate
    groups: (NSString*) groups
    version: (NSString*) version
    
{
    _code = code;
    _title = title;
    __description = _description;
    _creationDate = creationDate;
    _groups = groups;
    _version = version;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        __description = dict[@"description"];
        
        
        
        id creationDate_dict = dict[@"creationDate"];
        
        if(creationDate_dict != nil)
            _creationDate = [[SWGDate  alloc]initWithValues:creationDate_dict];
        
        
        _groups = dict[@"groups"];
        
        _version = dict[@"version"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
    if(_creationDate != nil){
        if([_creationDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_creationDate count] ; i++ ) {
				SWGDate *creationDate = [[SWGDate alloc]init];
				creationDate = [(NSArray*)_creationDate objectAtIndex:i];
                [array addObject:[(SWGObject*)creationDate asDictionary]];
            }
            dict[@"creationDate"] = array;
        }
        else if(_creationDate && [_creationDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_creationDate toString];
            if(dateString){
                dict[@"creationDate"] = dateString;
            }
        }
        else {
        
            if(_creationDate != nil) dict[@"creationDate"] = [(SWGObject*)_creationDate asDictionary];
        
        }
    }
    
    
    
            if(_groups != nil) dict[@"groups"] = _groups ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

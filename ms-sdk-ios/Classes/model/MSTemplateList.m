#import "SWGDate.h"
#import "MSTemplateList.h"

@implementation MSTemplateList

@synthesize code = _code;
@synthesize title = _title;
@synthesize _description = __description;
@synthesize creationDate = _creationDate;
@synthesize groups = _groups;
@synthesize onlyWacom = _onlyWacom;
@synthesize version = _version;

-(id)code: (NSString*) code
    title: (NSString*) title
    _description: (NSString*) _description
    creationDate: (NSNumber*) creationDate
    groups: (NSString*) groups
    onlyWacom: (NSNumber*) onlyWacom
    version: (NSString*) version
    
{
    _code = code;
    _title = title;
    __description = _description;
    _creationDate = creationDate;
    _groups = groups;
    _onlyWacom = onlyWacom;
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
        
        _creationDate = dict[@"creationDate"];
        
        _groups = dict[@"groups"];
        
        _onlyWacom = dict[@"onlyWacom"];
        
        _version = dict[@"version"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_creationDate != nil) dict[@"creationDate"] = _creationDate ;
        
    
    
            if(_groups != nil) dict[@"groups"] = _groups ;
        
    
    
            if(_onlyWacom != nil) dict[@"onlyWacom"] = _onlyWacom ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

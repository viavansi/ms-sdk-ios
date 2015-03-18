#import "SWGDate.h"
#import "Template.h"

@implementation Template

-(id)code: (NSString*) code
    title: (NSString*) title
    _description: (NSString*) _description
    creationDate: (SWGDate*) creationDate
    form: (Form*) form
    
{
    _code = code;
    _title = title;
    __description = _description;
    _creationDate = creationDate;
    _form = form;
    

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
        
        
        
        
        id form_dict = dict[@"form"];
        
        if(form_dict != nil)
            _form = [[Form  alloc]initWithValues:form_dict];
        
        
        
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
            for( SWGDate *creationDate in (NSArray*)_creationDate) {
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
    
    
    
    if(_form != nil){
        if([_form isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( Form *form in (NSArray*)_form) {
                [array addObject:[(SWGObject*)form asDictionary]];
            }
            dict[@"form"] = array;
        }
        else if(_form && [_form isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_form toString];
            if(dateString){
                dict[@"form"] = dateString;
            }
        }
        else {
        
            if(_form != nil) dict[@"form"] = [(SWGObject*)_form asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

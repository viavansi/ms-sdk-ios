#import "SWGDate.h"
#import "MSSignerWorkflow.h"

@implementation MSSignerWorkflow

@synthesize groupCode = _groupCode;
@synthesize userCode = _userCode;
@synthesize recipients = _recipients;
@synthesize code = _code;
@synthesize title = _title;
@synthesize _description = __description;

-(id)groupCode: (NSString*) groupCode
    userCode: (NSString*) userCode
    recipients: (NSArray*) recipients
    code: (NSString*) code
    title: (NSString*) title
    _description: (NSString*) _description
    
{
    _groupCode = groupCode;
    _userCode = userCode;
    _recipients = recipients;
    _code = code;
    _title = title;
    __description = _description;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _groupCode = dict[@"groupCode"];
        
        _userCode = dict[@"userCode"];
        
        
        
        id recipients_dict = dict[@"recipients"];
        
        if([recipients_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)recipients_dict count]];
            if([(NSArray*)recipients_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)recipients_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[recipients_dict objectAtIndex:i]];
                    MSRecipient* d = [[MSRecipient alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _recipients = [[NSArray alloc] initWithArray:objs];
            }
            else
                _recipients = [[NSArray alloc] init];
        }
        else {
            _recipients = [[NSArray alloc] init];
        }
        
        
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        __description = dict[@"description"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
    if(_recipients != nil){
        if([_recipients isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_recipients count] ; i++ ) {
				MSRecipient *recipients = [[MSRecipient alloc]init];
				recipients = [(NSArray*)_recipients objectAtIndex:i];
                [array addObject:[(SWGObject*)recipients asDictionary]];
            }
            dict[@"recipients"] = array;
        }
        else if(_recipients && [_recipients isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_recipients toString];
            if(dateString){
                dict[@"recipients"] = dateString;
            }
        }
        else {
        
            if(_recipients != nil) dict[@"recipients"] = [(SWGObject*)_recipients asDictionary];
        
        }
    }
    
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

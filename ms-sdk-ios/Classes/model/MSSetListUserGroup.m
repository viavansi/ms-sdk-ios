#import "SWGDate.h"
#import "MSSetListUserGroup.h"

@implementation MSSetListUserGroup

@synthesize code = _code;
@synthesize title = _title;
@synthesize userCode = _userCode;
@synthesize recipients = _recipients;
@synthesize status = _status;
@synthesize associatedMessageNum = _associatedMessageNum;
@synthesize associatedMessageCode = _associatedMessageCode;
@synthesize creationDate = _creationDate;

-(id)code: (NSString*) code
    title: (NSString*) title
    userCode: (NSString*) userCode
    recipients: (NSString*) recipients
    status: (NSString*) status
    associatedMessageNum: (NSNumber*) associatedMessageNum
    associatedMessageCode: (NSString*) associatedMessageCode
    creationDate: (SWGDate*) creationDate
    
{
    _code = code;
    _title = title;
    _userCode = userCode;
    _recipients = recipients;
    _status = status;
    _associatedMessageNum = associatedMessageNum;
    _associatedMessageCode = associatedMessageCode;
    _creationDate = creationDate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        _userCode = dict[@"userCode"];
        
        _recipients = dict[@"recipients"];
        
        _status = dict[@"status"];
        
        _associatedMessageNum = dict[@"associatedMessageNum"];
        
        _associatedMessageCode = dict[@"associatedMessageCode"];
        
        
        
        id creationDate_dict = dict[@"creationDate"];
        
        if(creationDate_dict != nil)
            _creationDate = [[SWGDate  alloc]initWithValues:creationDate_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_recipients != nil) dict[@"recipients"] = _recipients ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_associatedMessageNum != nil) dict[@"associatedMessageNum"] = _associatedMessageNum ;
        
    
    
            if(_associatedMessageCode != nil) dict[@"associatedMessageCode"] = _associatedMessageCode ;
        
    
    
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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

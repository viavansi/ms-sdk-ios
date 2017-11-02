#import "SWGDate.h"
#import "MSMessageList.h"

@implementation MSMessageList

@synthesize messageCode = _messageCode;
@synthesize status = _status;
@synthesize userCode = _userCode;
@synthesize groupCode = _groupCode;
@synthesize templateCode = _templateCode;
@synthesize creationDate = _creationDate;

-(id)messageCode: (NSString*) messageCode
    status: (NSString*) status
    userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    templateCode: (NSString*) templateCode
    creationDate: (SWGDate*) creationDate
    
{
    _messageCode = messageCode;
    _status = status;
    _userCode = userCode;
    _groupCode = groupCode;
    _templateCode = templateCode;
    _creationDate = creationDate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _status = dict[@"status"];
        
        _userCode = dict[@"userCode"];
        
        _groupCode = dict[@"groupCode"];
        
        _templateCode = dict[@"templateCode"];
        
        
        
        id creationDate_dict = dict[@"creationDate"];
        
        if(creationDate_dict != nil)
            _creationDate = [[SWGDate  alloc]initWithValues:creationDate_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_templateCode != nil) dict[@"templateCode"] = _templateCode ;
        
    
    
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

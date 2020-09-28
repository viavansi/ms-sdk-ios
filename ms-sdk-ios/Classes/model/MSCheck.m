#import "SWGDate.h"
#import "MSCheck.h"

@implementation MSCheck

@synthesize status = _status;
@synthesize code = _code;
@synthesize helpText = _helpText;
@synthesize signature = _signature;
@synthesize validateCode = _validateCode;
@synthesize expires = _expires;
@synthesize date = _date;
@synthesize commentReject = _commentReject;

-(id)status: (NSString*) status
    code: (NSString*) code
    helpText: (NSString*) helpText
    signature: (MSSignature*) signature
    validateCode: (NSString*) validateCode
    expires: (NSNumber*) expires
    date: (NSNumber*) date
    commentReject: (NSString*) commentReject
    
{
    _status = status;
    _code = code;
    _helpText = helpText;
    _signature = signature;
    _validateCode = validateCode;
    _expires = expires;
    _date = date;
    _commentReject = commentReject;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _status = dict[@"status"];
        
        _code = dict[@"code"];
        
        _helpText = dict[@"helpText"];
        
        
        
        id signature_dict = dict[@"signature"];
        
        if(signature_dict != nil)
            _signature = [[MSSignature  alloc]initWithValues:signature_dict];
        
        
        _validateCode = dict[@"validateCode"];
        
        _expires = dict[@"expires"];
        
        _date = dict[@"date"];
        
        _commentReject = dict[@"commentReject"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_helpText != nil) dict[@"helpText"] = _helpText ;
        
    
    
    if(_signature != nil){
        if([_signature isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signature count] ; i++ ) {
				MSSignature *signature = [[MSSignature alloc]init];
				signature = [(NSArray*)_signature objectAtIndex:i];
                [array addObject:[(SWGObject*)signature asDictionary]];
            }
            dict[@"signature"] = array;
        }
        else if(_signature && [_signature isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signature toString];
            if(dateString){
                dict[@"signature"] = dateString;
            }
        }
        else {
        
            if(_signature != nil) dict[@"signature"] = [(SWGObject*)_signature asDictionary];
        
        }
    }
    
    
    
            if(_validateCode != nil) dict[@"validateCode"] = _validateCode ;
        
    
    
            if(_expires != nil) dict[@"expires"] = _expires ;
        
    
    
            if(_date != nil) dict[@"date"] = _date ;
        
    
    
            if(_commentReject != nil) dict[@"commentReject"] = _commentReject ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

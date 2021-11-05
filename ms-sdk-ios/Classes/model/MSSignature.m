#import "SWGDate.h"
#import "MSSignature.h"

@implementation MSSignature

@synthesize type = _type;
@synthesize code = _code;
@synthesize status = _status;
@synthesize helpText = _helpText;
@synthesize certificateAlias = _certificateAlias;
@synthesize certificatePassword = _certificatePassword;
@synthesize certificateId = _certificateId;
@synthesize userId = _userId;
@synthesize typeFormatSign = _typeFormatSign;
@synthesize dataToSign = _dataToSign;
@synthesize idSign = _idSign;
@synthesize custodyDisabled = _custodyDisabled;
@synthesize stampers = _stampers;
@synthesize lastUpdated = _lastUpdated;
@synthesize recipientKey = _recipientKey;
@synthesize certificationLevel = _certificationLevel;
@synthesize reason = _reason;
@synthesize location = _location;

-(id)type: (NSString*) type
    code: (NSString*) code
    status: (NSString*) status
    helpText: (NSString*) helpText
    certificateAlias: (NSString*) certificateAlias
    certificatePassword: (NSString*) certificatePassword
    certificateId: (NSString*) certificateId
    userId: (NSString*) userId
    typeFormatSign: (NSString*) typeFormatSign
    dataToSign: (NSString*) dataToSign
    idSign: (NSString*) idSign
    custodyDisabled: (NSNumber*) custodyDisabled
    stampers: (NSArray*) stampers
    lastUpdated: (NSNumber*) lastUpdated
    recipientKey: (NSString*) recipientKey
    certificationLevel: (NSString*) certificationLevel
    reason: (NSString*) reason
    location: (NSString*) location
    
{
    _type = type;
    _code = code;
    _status = status;
    _helpText = helpText;
    _certificateAlias = certificateAlias;
    _certificatePassword = certificatePassword;
    _certificateId = certificateId;
    _userId = userId;
    _typeFormatSign = typeFormatSign;
    _dataToSign = dataToSign;
    _idSign = idSign;
    _custodyDisabled = custodyDisabled;
    _stampers = stampers;
    _lastUpdated = lastUpdated;
    _recipientKey = recipientKey;
    _certificationLevel = certificationLevel;
    _reason = reason;
    _location = location;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        _helpText = dict[@"helpText"];
        
        _certificateAlias = dict[@"certificateAlias"];
        
        _certificatePassword = dict[@"certificatePassword"];
        
        _certificateId = dict[@"certificateId"];
        
        _userId = dict[@"userId"];
        
        _typeFormatSign = dict[@"typeFormatSign"];
        
        _dataToSign = dict[@"dataToSign"];
        
        _idSign = dict[@"idSign"];
        
        _custodyDisabled = dict[@"custodyDisabled"];
        
        
        
        id stampers_dict = dict[@"stampers"];
        
        if([stampers_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)stampers_dict count]];
            if([(NSArray*)stampers_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)stampers_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[stampers_dict objectAtIndex:i]];
                    MSStamper* d = [[MSStamper alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _stampers = [[NSArray alloc] initWithArray:objs];
            }
            else
                _stampers = [[NSArray alloc] init];
        }
        else {
            _stampers = [[NSArray alloc] init];
        }
        
        
        _lastUpdated = dict[@"lastUpdated"];
        
        _recipientKey = dict[@"recipientKey"];
        
        _certificationLevel = dict[@"certificationLevel"];
        
        _reason = dict[@"reason"];
        
        _location = dict[@"location"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_helpText != nil) dict[@"helpText"] = _helpText ;
        
    
    
            if(_certificateAlias != nil) dict[@"certificateAlias"] = _certificateAlias ;
        
    
    
            if(_certificatePassword != nil) dict[@"certificatePassword"] = _certificatePassword ;
        
    
    
            if(_certificateId != nil) dict[@"certificateId"] = _certificateId ;
        
    
    
            if(_userId != nil) dict[@"userId"] = _userId ;
        
    
    
            if(_typeFormatSign != nil) dict[@"typeFormatSign"] = _typeFormatSign ;
        
    
    
            if(_dataToSign != nil) dict[@"dataToSign"] = _dataToSign ;
        
    
    
            if(_idSign != nil) dict[@"idSign"] = _idSign ;
        
    
    
            if(_custodyDisabled != nil) dict[@"custodyDisabled"] = _custodyDisabled ;
        
    
    
    if(_stampers != nil){
        if([_stampers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_stampers count] ; i++ ) {
				MSStamper *stampers = [[MSStamper alloc]init];
				stampers = [(NSArray*)_stampers objectAtIndex:i];
                [array addObject:[(SWGObject*)stampers asDictionary]];
            }
            dict[@"stampers"] = array;
        }
        else if(_stampers && [_stampers isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_stampers toString];
            if(dateString){
                dict[@"stampers"] = dateString;
            }
        }
        else {
        
            if(_stampers != nil) dict[@"stampers"] = [(SWGObject*)_stampers asDictionary];
        
        }
    }
    
    
    
            if(_lastUpdated != nil) dict[@"lastUpdated"] = _lastUpdated ;
        
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    
    
            if(_certificationLevel != nil) dict[@"certificationLevel"] = _certificationLevel ;
        
    
    
            if(_reason != nil) dict[@"reason"] = _reason ;
        
    
    
            if(_location != nil) dict[@"location"] = _location ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

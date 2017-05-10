#import "SWGDate.h"
#import "MSSignature.h"

@implementation MSSignature

-(id)type: (NSString*) type
    code: (NSString*) code
    status: (NSString*) status
    helpText: (NSString*) helpText
    certificateAlias: (NSString*) certificateAlias
    certificatePassword: (NSString*) certificatePassword
    typeFormatSign: (NSString*) typeFormatSign
    dataToSign: (NSString*) dataToSign
    idSign: (NSString*) idSign
    custodyDisabled: (NSNumber*) custodyDisabled
    stampers: (NSArray*) stampers
    certificationLevel: (NSString*) certificationLevel
    
{
    _type = type;
    _code = code;
    _status = status;
    _helpText = helpText;
    _certificateAlias = certificateAlias;
    _certificatePassword = certificatePassword;
    _typeFormatSign = typeFormatSign;
    _dataToSign = dataToSign;
    _idSign = idSign;
    _custodyDisabled = custodyDisabled;
    _stampers = stampers;
    _certificationLevel = certificationLevel;
    

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
        
        
        _certificationLevel = dict[@"certificationLevel"];
        
        
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
    
    
    
            if(_certificationLevel != nil) dict[@"certificationLevel"] = _certificationLevel ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

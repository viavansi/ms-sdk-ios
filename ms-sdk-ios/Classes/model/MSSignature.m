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
    stamper: (MSStamper*) stamper
    
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
    _stamper = stamper;
    

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
        
        
        
        id stamper_dict = dict[@"stamper"];
        
        if(stamper_dict != nil)
            _stamper = [[MSStamper  alloc]initWithValues:stamper_dict];
        
        
        
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
        
    
    
    if(_stamper != nil){
        if([_stamper isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_stamper count] ; i++ ) {
				MSStamper *stamper = [[MSStamper alloc]init];
				stamper = [(NSArray*)_stamper objectAtIndex:i];            
                [array addObject:[(SWGObject*)stamper asDictionary]];
            }
            dict[@"stamper"] = array;
        }
        else if(_stamper && [_stamper isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_stamper toString];
            if(dateString){
                dict[@"stamper"] = dateString;
            }
        }
        else {
        
            if(_stamper != nil) dict[@"stamper"] = [(SWGObject*)_stamper asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

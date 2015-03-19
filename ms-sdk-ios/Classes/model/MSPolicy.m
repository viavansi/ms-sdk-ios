#import "SWGDate.h"
#import "MSPolicy.h"

@implementation MSPolicy

-(id)code: (NSString*) code
    userCode: (NSString*) userCode
    typeFormatSign: (NSString*) typeFormatSign
    typeSign: (NSString*) typeSign
    signByServer: (NSNumber*) signByServer
    certificateAlias: (NSString*) certificateAlias
    certificatePassword: (NSString*) certificatePassword
    idTemporal: (NSString*) idTemporal
    idSign: (NSString*) idSign
    paramList: (NSArray*) paramList
    evidences: (NSArray*) evidences
    error: (MSErrorResponse*) error
    
{
    _code = code;
    _userCode = userCode;
    _typeFormatSign = typeFormatSign;
    _typeSign = typeSign;
    _signByServer = signByServer;
    _certificateAlias = certificateAlias;
    _certificatePassword = certificatePassword;
    _idTemporal = idTemporal;
    _idSign = idSign;
    _paramList = paramList;
    _evidences = evidences;
    _error = error;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _userCode = dict[@"userCode"];
        
        _typeFormatSign = dict[@"typeFormatSign"];
        
        _typeSign = dict[@"typeSign"];
        
        _signByServer = dict[@"signByServer"];
        
        _certificateAlias = dict[@"certificateAlias"];
        
        _certificatePassword = dict[@"certificatePassword"];
        
        _idTemporal = dict[@"idTemporal"];
        
        _idSign = dict[@"idSign"];
        
        
        
        id paramList_dict = dict[@"paramList"];
        
        if([paramList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)paramList_dict count]];
            if([(NSArray*)paramList_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)paramList_dict) {
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _paramList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _paramList = [[NSArray alloc] init];
        }
        else {
            _paramList = [[NSArray alloc] init];
        }
        
        
        
        
        id evidences_dict = dict[@"evidences"];
        
        if([evidences_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)evidences_dict count]];
            if([(NSArray*)evidences_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)evidences_dict) {
                    MSEvidence* d = [[MSEvidence alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _evidences = [[NSArray alloc] initWithArray:objs];
            }
            else
                _evidences = [[NSArray alloc] init];
        }
        else {
            _evidences = [[NSArray alloc] init];
        }
        
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[MSErrorResponse  alloc]initWithValues:error_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_typeFormatSign != nil) dict[@"typeFormatSign"] = _typeFormatSign ;
        
    
    
            if(_typeSign != nil) dict[@"typeSign"] = _typeSign ;
        
    
    
            if(_signByServer != nil) dict[@"signByServer"] = _signByServer ;
        
    
    
            if(_certificateAlias != nil) dict[@"certificateAlias"] = _certificateAlias ;
        
    
    
            if(_certificatePassword != nil) dict[@"certificatePassword"] = _certificatePassword ;
        
    
    
            if(_idTemporal != nil) dict[@"idTemporal"] = _idTemporal ;
        
    
    
            if(_idSign != nil) dict[@"idSign"] = _idSign ;
        
    
    
    if(_paramList != nil){
        if([_paramList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSParam *paramList in (NSArray*)_paramList) {
                [array addObject:[(SWGObject*)paramList asDictionary]];
            }
            dict[@"paramList"] = array;
        }
        else if(_paramList && [_paramList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_paramList toString];
            if(dateString){
                dict[@"paramList"] = dateString;
            }
        }
        else {
        
            if(_paramList != nil) dict[@"paramList"] = [(SWGObject*)_paramList asDictionary];
        
        }
    }
    
    
    
    if(_evidences != nil){
        if([_evidences isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSEvidence *evidences in (NSArray*)_evidences) {
                [array addObject:[(SWGObject*)evidences asDictionary]];
            }
            dict[@"evidences"] = array;
        }
        else if(_evidences && [_evidences isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_evidences toString];
            if(dateString){
                dict[@"evidences"] = dateString;
            }
        }
        else {
        
            if(_evidences != nil) dict[@"evidences"] = [(SWGObject*)_evidences asDictionary];
        
        }
    }
    
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSErrorResponse *error in (NSArray*)_error) {
                [array addObject:[(SWGObject*)error asDictionary]];
            }
            dict[@"error"] = array;
        }
        else if(_error && [_error isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_error toString];
            if(dateString){
                dict[@"error"] = dateString;
            }
        }
        else {
        
            if(_error != nil) dict[@"error"] = [(SWGObject*)_error asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

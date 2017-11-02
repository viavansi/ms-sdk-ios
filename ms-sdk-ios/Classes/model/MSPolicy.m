#import "SWGDate.h"
#import "MSPolicy.h"

@implementation MSPolicy

@synthesize code = _code;
@synthesize userCode = _userCode;
@synthesize typeFormatSign = _typeFormatSign;
@synthesize typeSign = _typeSign;
@synthesize signByServer = _signByServer;
@synthesize certificateAlias = _certificateAlias;
@synthesize certificatePassword = _certificatePassword;
@synthesize idTemporal = _idTemporal;
@synthesize idSign = _idSign;
@synthesize paramList = _paramList;
@synthesize evidences = _evidences;
@synthesize signatures = _signatures;
@synthesize error = _error;
@synthesize checklist = _checklist;

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
    signatures: (NSArray*) signatures
    error: (MSErrorResponse*) error
    checklist: (NSArray*) checklist
    
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
    _signatures = signatures;
    _error = error;
    _checklist = checklist;
    

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
                for (int i=0 ; i<[(NSArray*)paramList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[paramList_dict objectAtIndex:i]];
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
                for (int i=0 ; i<[(NSArray*)evidences_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[evidences_dict objectAtIndex:i]];
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
        
        
        
        
        id signatures_dict = dict[@"signatures"];
        
        if([signatures_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)signatures_dict count]];
            if([(NSArray*)signatures_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)signatures_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[signatures_dict objectAtIndex:i]];
                    MSSignature* d = [[MSSignature alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _signatures = [[NSArray alloc] initWithArray:objs];
            }
            else
                _signatures = [[NSArray alloc] init];
        }
        else {
            _signatures = [[NSArray alloc] init];
        }
        
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[MSErrorResponse  alloc]initWithValues:error_dict];
        
        
        
        
        id checklist_dict = dict[@"checklist"];
        
        if([checklist_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)checklist_dict count]];
            if([(NSArray*)checklist_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)checklist_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[checklist_dict objectAtIndex:i]];
                    MSCheck* d = [[MSCheck alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _checklist = [[NSArray alloc] initWithArray:objs];
            }
            else
                _checklist = [[NSArray alloc] init];
        }
        else {
            _checklist = [[NSArray alloc] init];
        }
        
        
        
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
            for( int i=0 ; i<[(NSArray*)_paramList count] ; i++ ) {
				MSParam *paramList = [[MSParam alloc]init];
				paramList = [(NSArray*)_paramList objectAtIndex:i];
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
            for( int i=0 ; i<[(NSArray*)_evidences count] ; i++ ) {
				MSEvidence *evidences = [[MSEvidence alloc]init];
				evidences = [(NSArray*)_evidences objectAtIndex:i];
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
    
    
    
    if(_signatures != nil){
        if([_signatures isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signatures count] ; i++ ) {
				MSSignature *signatures = [[MSSignature alloc]init];
				signatures = [(NSArray*)_signatures objectAtIndex:i];
                [array addObject:[(SWGObject*)signatures asDictionary]];
            }
            dict[@"signatures"] = array;
        }
        else if(_signatures && [_signatures isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signatures toString];
            if(dateString){
                dict[@"signatures"] = dateString;
            }
        }
        else {
        
            if(_signatures != nil) dict[@"signatures"] = [(SWGObject*)_signatures asDictionary];
        
        }
    }
    
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_error count] ; i++ ) {
				MSErrorResponse *error = [[MSErrorResponse alloc]init];
				error = [(NSArray*)_error objectAtIndex:i];
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
    
    
    
    if(_checklist != nil){
        if([_checklist isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_checklist count] ; i++ ) {
				MSCheck *checklist = [[MSCheck alloc]init];
				checklist = [(NSArray*)_checklist objectAtIndex:i];
                [array addObject:[(SWGObject*)checklist asDictionary]];
            }
            dict[@"checklist"] = array;
        }
        else if(_checklist && [_checklist isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_checklist toString];
            if(dateString){
                dict[@"checklist"] = dateString;
            }
        }
        else {
        
            if(_checklist != nil) dict[@"checklist"] = [(SWGObject*)_checklist asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

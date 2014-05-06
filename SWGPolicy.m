#import "SWGDate.h"
#import "SWGPolicy.h"

@implementation SWGPolicy

-(id)code: (NSString*) code
    typeFormatSign: (NSString*) typeFormatSign
    typeSign: (NSString*) typeSign
    idTemporal: (NSString*) idTemporal
    idSign: (NSString*) idSign
    paramList: (NSArray*) paramList
    evidences: (NSArray*) evidences
    error: (SWGErrorResponse*) error
{
  _code = code;
  _typeFormatSign = typeFormatSign;
  _typeSign = typeSign;
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
        _typeFormatSign = dict[@"typeFormatSign"]; 
        _typeSign = dict[@"typeSign"]; 
        _idTemporal = dict[@"idTemporal"]; 
        _idSign = dict[@"idSign"]; 
        id paramList_dict = dict[@"paramList"];
        if([paramList_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)paramList_dict count]];

            if([(NSArray*)paramList_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)paramList_dict) {
                    SWGParam* d = [[SWGParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _paramList = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _paramList = [[NSArray alloc] init];
            }
        }
        else {
            _paramList = [[NSArray alloc] init];
        }
        id evidences_dict = dict[@"evidences"];
        if([evidences_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)evidences_dict count]];

            if([(NSArray*)evidences_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)evidences_dict) {
                    SWGEvidence* d = [[SWGEvidence alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _evidences = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _evidences = [[NSArray alloc] init];
            }
        }
        else {
            _evidences = [[NSArray alloc] init];
        }
        id error_dict = dict[@"error"];
        if(error_dict != nil)
            _error = [[SWGErrorResponse alloc]initWithValues:error_dict];
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_code != nil) dict[@"code"] = _code ;
        if(_typeFormatSign != nil) dict[@"typeFormatSign"] = _typeFormatSign ;
        if(_typeSign != nil) dict[@"typeSign"] = _typeSign ;
        if(_idTemporal != nil) dict[@"idTemporal"] = _idTemporal ;
        if(_idSign != nil) dict[@"idSign"] = _idSign ;
        if(_paramList != nil){
        if([_paramList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGParam *paramList in (NSArray*)_paramList) {
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
            for( SWGEvidence *evidences in (NSArray*)_evidences) {
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
            for( SWGErrorResponse *error in (NSArray*)_error) {
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


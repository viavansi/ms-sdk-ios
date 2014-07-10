#import "SWGDate.h"
#import "SWGEvidence.h"

@implementation SWGEvidence

-(id)type: (NSString*) type
    code: (NSString*) code
    status: (NSString*) status
    helpText: (NSString*) helpText
    temporalReference: (NSString*) temporalReference
    positions: (NSArray*) positions
    metadata: (NSString*) metadata
    deviceType: (NSString*) deviceType
    hashPdf: (NSArray*) hashPdf
    hashImage: (NSString*) hashImage
    algorithmic: (NSString*) algorithmic
    fingerID: (NSString*) fingerID
    typeFormatSign: (NSString*) typeFormatSign
    certificateAlias: (NSString*) certificateAlias
    certificatePassword: (NSString*) certificatePassword
{
  _type = type;
  _code = code;
  _status = status;
  _helpText = helpText;
  _temporalReference = temporalReference;
  _positions = positions;
  _metadata = metadata;
  _deviceType = deviceType;
  _hashPdf = hashPdf;
  _hashImage = hashImage;
  _algorithmic = algorithmic;
  _fingerID = fingerID;
  _typeFormatSign = typeFormatSign;
  _certificateAlias = certificateAlias;
  _certificatePassword = certificatePassword;
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
        _temporalReference = dict[@"temporalReference"]; 
        id positions_dict = dict[@"positions"];
        if([positions_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)positions_dict count]];

            if([(NSArray*)positions_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)positions_dict) {
                    SWGPosition* d = [[SWGPosition alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _positions = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _positions = [[NSArray alloc] init];
            }
        }
        else {
            _positions = [[NSArray alloc] init];
        }
        _metadata = dict[@"metadata"]; 
        _deviceType = dict[@"deviceType"]; 
        _hashPdf = dict[@"hashPdf"]; 
        _hashImage = dict[@"hashImage"]; 
        _algorithmic = dict[@"algorithmic"]; 
        _fingerID = dict[@"fingerID"]; 
        _typeFormatSign = dict[@"typeFormatSign"]; 
        _certificateAlias = dict[@"certificateAlias"]; 
        _certificatePassword = dict[@"certificatePassword"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_type != nil) dict[@"type"] = _type ;
        if(_code != nil) dict[@"code"] = _code ;
        if(_status != nil) dict[@"status"] = _status ;
        if(_helpText != nil) dict[@"helpText"] = _helpText ;
        if(_temporalReference != nil) dict[@"temporalReference"] = _temporalReference ;
        if(_positions != nil){
        if([_positions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGPosition *positions in (NSArray*)_positions) {
                [array addObject:[(SWGObject*)positions asDictionary]];
            }
            dict[@"positions"] = array;
        }
        else if(_positions && [_positions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_positions toString];
            if(dateString){
                dict[@"positions"] = dateString;
            }
        }
        else {
        if(_positions != nil) dict[@"positions"] = [(SWGObject*)_positions asDictionary];
        }
    }
    if(_metadata != nil) dict[@"metadata"] = _metadata ;
        if(_deviceType != nil) dict[@"deviceType"] = _deviceType ;
        if(_hashPdf != nil) dict[@"hashPdf"] = _hashPdf ;
        if(_hashImage != nil) dict[@"hashImage"] = _hashImage ;
        if(_algorithmic != nil) dict[@"algorithmic"] = _algorithmic ;
        if(_fingerID != nil) dict[@"fingerID"] = _fingerID ;
        if(_typeFormatSign != nil) dict[@"typeFormatSign"] = _typeFormatSign ;
        if(_certificateAlias != nil) dict[@"certificateAlias"] = _certificateAlias ;
        if(_certificatePassword != nil) dict[@"certificatePassword"] = _certificatePassword ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


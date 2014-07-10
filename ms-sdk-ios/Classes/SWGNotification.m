#import "SWGDate.h"
#import "SWGNotification.h"

@implementation SWGNotification

-(id)code: (NSString*) code
    validateCode: (NSString*) validateCode
    text: (NSString*) text
    detail: (NSString*) detail
    sound: (NSString*) sound
    status: (NSString*) status
    metadata: (NSArray*) metadata
    devices: (NSArray*) devices
{
  _code = code;
  _validateCode = validateCode;
  _text = text;
  _detail = detail;
  _sound = sound;
  _status = status;
  _metadata = metadata;
  _devices = devices;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"]; 
        _validateCode = dict[@"validateCode"]; 
        _text = dict[@"text"]; 
        _detail = dict[@"detail"]; 
        _sound = dict[@"sound"]; 
        _status = dict[@"status"]; 
        id metadata_dict = dict[@"metadata"];
        if([metadata_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadata_dict count]];

            if([(NSArray*)metadata_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)metadata_dict) {
                    SWGParam* d = [[SWGParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _metadata = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _metadata = [[NSArray alloc] init];
            }
        }
        else {
            _metadata = [[NSArray alloc] init];
        }
        id devices_dict = dict[@"devices"];
        if([devices_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)devices_dict count]];

            if([(NSArray*)devices_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)devices_dict) {
                    SWGDevice* d = [[SWGDevice alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _devices = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _devices = [[NSArray alloc] init];
            }
        }
        else {
            _devices = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_code != nil) dict[@"code"] = _code ;
        if(_validateCode != nil) dict[@"validateCode"] = _validateCode ;
        if(_text != nil) dict[@"text"] = _text ;
        if(_detail != nil) dict[@"detail"] = _detail ;
        if(_sound != nil) dict[@"sound"] = _sound ;
        if(_status != nil) dict[@"status"] = _status ;
        if(_metadata != nil){
        if([_metadata isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGParam *metadata in (NSArray*)_metadata) {
                [array addObject:[(SWGObject*)metadata asDictionary]];
            }
            dict[@"metadata"] = array;
        }
        else if(_metadata && [_metadata isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_metadata toString];
            if(dateString){
                dict[@"metadata"] = dateString;
            }
        }
        else {
        if(_metadata != nil) dict[@"metadata"] = [(SWGObject*)_metadata asDictionary];
        }
    }
    if(_devices != nil){
        if([_devices isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDevice *devices in (NSArray*)_devices) {
                [array addObject:[(SWGObject*)devices asDictionary]];
            }
            dict[@"devices"] = array;
        }
        else if(_devices && [_devices isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_devices toString];
            if(dateString){
                dict[@"devices"] = dateString;
            }
        }
        else {
        if(_devices != nil) dict[@"devices"] = [(SWGObject*)_devices asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

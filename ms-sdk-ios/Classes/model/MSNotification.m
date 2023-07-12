#import "SWGDate.h"
#import "MSNotification.h"

@implementation MSNotification

@synthesize code = _code;
@synthesize messageCode = _messageCode;
@synthesize validateCode = _validateCode;
@synthesize validateCodeType = _validateCodeType;
@synthesize validateOperationId = _validateOperationId;
@synthesize validateOtpStatus = _validateOtpStatus;
@synthesize validateOtpText = _validateOtpText;
@synthesize validateOtpSubject = _validateOtpSubject;
@synthesize validateCodeFinish = _validateCodeFinish;
@synthesize text = _text;
@synthesize detail = _detail;
@synthesize sound = _sound;
@synthesize status = _status;
@synthesize notificationType = _notificationType;
@synthesize smsType = _smsType;
@synthesize location = _location;
@synthesize sharedLink = _sharedLink;
@synthesize updateDate = _updateDate;
@synthesize retryTime = _retryTime;
@synthesize retryCount = _retryCount;
@synthesize customization = _customization;
@synthesize deliveryGroup = _deliveryGroup;
@synthesize deliveryUsers = _deliveryUsers;
@synthesize deliveryType = _deliveryType;
@synthesize deliveryAppCode = _deliveryAppCode;
@synthesize metadata = _metadata;
@synthesize devices = _devices;
@synthesize recipientKey = _recipientKey;

-(id)code: (NSString*) code
    messageCode: (NSString*) messageCode
    validateCode: (NSString*) validateCode
    validateCodeType: (NSString*) validateCodeType
    validateOperationId: (NSString*) validateOperationId
    validateOtpStatus: (NSString*) validateOtpStatus
    validateOtpText: (NSString*) validateOtpText
    validateOtpSubject: (NSString*) validateOtpSubject
    validateCodeFinish: (NSString*) validateCodeFinish
    text: (NSString*) text
    detail: (NSString*) detail
    sound: (NSString*) sound
    status: (NSString*) status
    notificationType: (NSString*) notificationType
    smsType: (NSString*) smsType
    location: (NSString*) location
    sharedLink: (MSSharedLink*) sharedLink
    updateDate: (NSNumber*) updateDate
    retryTime: (NSNumber*) retryTime
    retryCount: (NSNumber*) retryCount
    customization: (MSCustomization*) customization
    deliveryGroup: (NSString*) deliveryGroup
    deliveryUsers: (NSString*) deliveryUsers
    deliveryType: (NSString*) deliveryType
    deliveryAppCode: (NSString*) deliveryAppCode
    metadata: (NSArray*) metadata
    devices: (NSArray*) devices
    recipientKey: (NSString*) recipientKey
    
{
    _code = code;
    _messageCode = messageCode;
    _validateCode = validateCode;
    _validateCodeType = validateCodeType;
    _validateOperationId = validateOperationId;
    _validateOtpStatus = validateOtpStatus;
    _validateOtpText = validateOtpText;
    _validateOtpSubject = validateOtpSubject;
    _validateCodeFinish = validateCodeFinish;
    _text = text;
    _detail = detail;
    _sound = sound;
    _status = status;
    _notificationType = notificationType;
    _smsType = smsType;
    _location = location;
    _sharedLink = sharedLink;
    _updateDate = updateDate;
    _retryTime = retryTime;
    _retryCount = retryCount;
    _customization = customization;
    _deliveryGroup = deliveryGroup;
    _deliveryUsers = deliveryUsers;
    _deliveryType = deliveryType;
    _deliveryAppCode = deliveryAppCode;
    _metadata = metadata;
    _devices = devices;
    _recipientKey = recipientKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _messageCode = dict[@"messageCode"];
        
        _validateCode = dict[@"validateCode"];
        
        _validateCodeType = dict[@"validateCodeType"];
        
        _validateOperationId = dict[@"validateOperationId"];
        
        _validateOtpStatus = dict[@"validateOtpStatus"];
        
        _validateOtpText = dict[@"validateOtpText"];
        
        _validateOtpSubject = dict[@"validateOtpSubject"];
        
        _validateCodeFinish = dict[@"validateCodeFinish"];
        
        _text = dict[@"text"];
        
        _detail = dict[@"detail"];
        
        _sound = dict[@"sound"];
        
        _status = dict[@"status"];
        
        _notificationType = dict[@"notificationType"];
        
        _smsType = dict[@"smsType"];
        
        _location = dict[@"location"];
        
        
        
        id sharedLink_dict = dict[@"sharedLink"];
        
        if(sharedLink_dict != nil)
            _sharedLink = [[MSSharedLink  alloc]initWithValues:sharedLink_dict];
        
        
        _updateDate = dict[@"updateDate"];
        
        _retryTime = dict[@"retryTime"];
        
        _retryCount = dict[@"retryCount"];
        
        
        
        id customization_dict = dict[@"customization"];
        
        if(customization_dict != nil)
            _customization = [[MSCustomization  alloc]initWithValues:customization_dict];
        
        
        _deliveryGroup = dict[@"deliveryGroup"];
        
        _deliveryUsers = dict[@"deliveryUsers"];
        
        _deliveryType = dict[@"deliveryType"];
        
        _deliveryAppCode = dict[@"deliveryAppCode"];
        
        
        
        id metadata_dict = dict[@"metadata"];
        
        if([metadata_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadata_dict count]];
            if([(NSArray*)metadata_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)metadata_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[metadata_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _metadata = [[NSArray alloc] initWithArray:objs];
            }
            else
                _metadata = [[NSArray alloc] init];
        }
        else {
            _metadata = [[NSArray alloc] init];
        }
        
        
        
        
        id devices_dict = dict[@"devices"];
        
        if([devices_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)devices_dict count]];
            if([(NSArray*)devices_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)devices_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[devices_dict objectAtIndex:i]];
                    MSDevice* d = [[MSDevice alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _devices = [[NSArray alloc] initWithArray:objs];
            }
            else
                _devices = [[NSArray alloc] init];
        }
        else {
            _devices = [[NSArray alloc] init];
        }
        
        
        _recipientKey = dict[@"recipientKey"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_validateCode != nil) dict[@"validateCode"] = _validateCode ;
        
    
    
            if(_validateCodeType != nil) dict[@"validateCodeType"] = _validateCodeType ;
        
    
    
            if(_validateOperationId != nil) dict[@"validateOperationId"] = _validateOperationId ;
        
    
    
            if(_validateOtpStatus != nil) dict[@"validateOtpStatus"] = _validateOtpStatus ;
        
    
    
            if(_validateOtpText != nil) dict[@"validateOtpText"] = _validateOtpText ;
        
    
    
            if(_validateOtpSubject != nil) dict[@"validateOtpSubject"] = _validateOtpSubject ;
        
    
    
            if(_validateCodeFinish != nil) dict[@"validateCodeFinish"] = _validateCodeFinish ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    
    
            if(_detail != nil) dict[@"detail"] = _detail ;
        
    
    
            if(_sound != nil) dict[@"sound"] = _sound ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_notificationType != nil) dict[@"notificationType"] = _notificationType ;
        
    
    
            if(_smsType != nil) dict[@"smsType"] = _smsType ;
        
    
    
            if(_location != nil) dict[@"location"] = _location ;
        
    
    
    if(_sharedLink != nil){
        if([_sharedLink isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_sharedLink count] ; i++ ) {
				MSSharedLink *sharedLink = [[MSSharedLink alloc]init];
				sharedLink = [(NSArray*)_sharedLink objectAtIndex:i];
                [array addObject:[(SWGObject*)sharedLink asDictionary]];
            }
            dict[@"sharedLink"] = array;
        }
        else if(_sharedLink && [_sharedLink isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_sharedLink toString];
            if(dateString){
                dict[@"sharedLink"] = dateString;
            }
        }
        else {
        
            if(_sharedLink != nil) dict[@"sharedLink"] = [(SWGObject*)_sharedLink asDictionary];
        
        }
    }
    
    
    
            if(_updateDate != nil) dict[@"updateDate"] = _updateDate ;
        
    
    
            if(_retryTime != nil) dict[@"retryTime"] = _retryTime ;
        
    
    
            if(_retryCount != nil) dict[@"retryCount"] = _retryCount ;
        
    
    
    if(_customization != nil){
        if([_customization isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_customization count] ; i++ ) {
				MSCustomization *customization = [[MSCustomization alloc]init];
				customization = [(NSArray*)_customization objectAtIndex:i];
                [array addObject:[(SWGObject*)customization asDictionary]];
            }
            dict[@"customization"] = array;
        }
        else if(_customization && [_customization isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_customization toString];
            if(dateString){
                dict[@"customization"] = dateString;
            }
        }
        else {
        
            if(_customization != nil) dict[@"customization"] = [(SWGObject*)_customization asDictionary];
        
        }
    }
    
    
    
            if(_deliveryGroup != nil) dict[@"deliveryGroup"] = _deliveryGroup ;
        
    
    
            if(_deliveryUsers != nil) dict[@"deliveryUsers"] = _deliveryUsers ;
        
    
    
            if(_deliveryType != nil) dict[@"deliveryType"] = _deliveryType ;
        
    
    
            if(_deliveryAppCode != nil) dict[@"deliveryAppCode"] = _deliveryAppCode ;
        
    
    
    if(_metadata != nil){
        if([_metadata isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_metadata count] ; i++ ) {
				MSParam *metadata = [[MSParam alloc]init];
				metadata = [(NSArray*)_metadata objectAtIndex:i];
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
            for( int i=0 ; i<[(NSArray*)_devices count] ; i++ ) {
				MSDevice *devices = [[MSDevice alloc]init];
				devices = [(NSArray*)_devices objectAtIndex:i];
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
    
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

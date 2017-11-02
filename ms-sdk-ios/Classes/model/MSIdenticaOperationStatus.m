#import "SWGDate.h"
#import "MSIdenticaOperationStatus.h"

@implementation MSIdenticaOperationStatus

-(id)responseCode: (NSString*) responseCode
    clientId: (NSString*) clientId
    serviceId: (NSString*) serviceId
    captureFormat: (NSString*) captureFormat
    error: (NSString*) error
    serviceResponseCode: (NSString*) serviceResponseCode
    endDate: (NSNumber*) endDate
    version: (NSString*) version
    fingerprintReferenceCount: (NSString*) fingerprintReferenceCount
    fingerprintReferenceFormat: (NSString*) fingerprintReferenceFormat
    serviceResponse: (NSString*) serviceResponse
    authenticationResponse: (NSString*) authenticationResponse
    pin: (NSString*) pin
    name1: (NSString*) name1
    name2: (NSString*) name2
    surname1: (NSString*) surname1
    surname2: (NSString*) surname2
    generationDate: (NSString*) generationDate
    generationLocation: (NSString*) generationLocation
    operationCode: (NSString*) operationCode
    fullName: (NSString*) fullName
    
{
    _responseCode = responseCode;
    _clientId = clientId;
    _serviceId = serviceId;
    _captureFormat = captureFormat;
    _error = error;
    _serviceResponseCode = serviceResponseCode;
    _endDate = endDate;
    _version = version;
    _fingerprintReferenceCount = fingerprintReferenceCount;
    _fingerprintReferenceFormat = fingerprintReferenceFormat;
    _serviceResponse = serviceResponse;
    _authenticationResponse = authenticationResponse;
    _pin = pin;
    _name1 = name1;
    _name2 = name2;
    _surname1 = surname1;
    _surname2 = surname2;
    _generationDate = generationDate;
    _generationLocation = generationLocation;
    _operationCode = operationCode;
    _fullName = fullName;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _responseCode = dict[@"responseCode"];
        
        _clientId = dict[@"clientId"];
        
        _serviceId = dict[@"serviceId"];
        
        _captureFormat = dict[@"captureFormat"];
        
        _error = dict[@"error"];
        
        _serviceResponseCode = dict[@"serviceResponseCode"];
        
        _endDate = dict[@"endDate"];
        
        _version = dict[@"version"];
        
        _fingerprintReferenceCount = dict[@"fingerprintReferenceCount"];
        
        _fingerprintReferenceFormat = dict[@"fingerprintReferenceFormat"];
        
        _serviceResponse = dict[@"serviceResponse"];
        
        _authenticationResponse = dict[@"authenticationResponse"];
        
        _pin = dict[@"pin"];
        
        _name1 = dict[@"name1"];
        
        _name2 = dict[@"name2"];
        
        _surname1 = dict[@"surname1"];
        
        _surname2 = dict[@"surname2"];
        
        _generationDate = dict[@"generationDate"];
        
        _generationLocation = dict[@"generationLocation"];
        
        _operationCode = dict[@"operationCode"];
        
        _fullName = dict[@"fullName"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_responseCode != nil) dict[@"responseCode"] = _responseCode ;
        
    
    
            if(_clientId != nil) dict[@"clientId"] = _clientId ;
        
    
    
            if(_serviceId != nil) dict[@"serviceId"] = _serviceId ;
        
    
    
            if(_captureFormat != nil) dict[@"captureFormat"] = _captureFormat ;
        
    
    
            if(_error != nil) dict[@"error"] = _error ;
        
    
    
            if(_serviceResponseCode != nil) dict[@"serviceResponseCode"] = _serviceResponseCode ;
        
    
    
            if(_endDate != nil) dict[@"endDate"] = _endDate ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_fingerprintReferenceCount != nil) dict[@"fingerprintReferenceCount"] = _fingerprintReferenceCount ;
        
    
    
            if(_fingerprintReferenceFormat != nil) dict[@"fingerprintReferenceFormat"] = _fingerprintReferenceFormat ;
        
    
    
            if(_serviceResponse != nil) dict[@"serviceResponse"] = _serviceResponse ;
        
    
    
            if(_authenticationResponse != nil) dict[@"authenticationResponse"] = _authenticationResponse ;
        
    
    
            if(_pin != nil) dict[@"pin"] = _pin ;
        
    
    
            if(_name1 != nil) dict[@"name1"] = _name1 ;
        
    
    
            if(_name2 != nil) dict[@"name2"] = _name2 ;
        
    
    
            if(_surname1 != nil) dict[@"surname1"] = _surname1 ;
        
    
    
            if(_surname2 != nil) dict[@"surname2"] = _surname2 ;
        
    
    
            if(_generationDate != nil) dict[@"generationDate"] = _generationDate ;
        
    
    
            if(_generationLocation != nil) dict[@"generationLocation"] = _generationLocation ;
        
    
    
            if(_operationCode != nil) dict[@"operationCode"] = _operationCode ;
        
    
    
            if(_fullName != nil) dict[@"fullName"] = _fullName ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSWrapSignature.h"

@implementation MSWrapSignature

@synthesize signatureCode = _signatureCode;
@synthesize publicKey = _publicKey;
@synthesize messageCode = _messageCode;
@synthesize signedDataBase64 = _signedDataBase64;
@synthesize fortressAccessToken = _fortressAccessToken;

-(id)signatureCode: (NSString*) signatureCode
    publicKey: (NSString*) publicKey
    messageCode: (NSString*) messageCode
    signedDataBase64: (NSString*) signedDataBase64
    fortressAccessToken: (MSFortressAccessToken*) fortressAccessToken
    
{
    _signatureCode = signatureCode;
    _publicKey = publicKey;
    _messageCode = messageCode;
    _signedDataBase64 = signedDataBase64;
    _fortressAccessToken = fortressAccessToken;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _signatureCode = dict[@"signatureCode"];
        
        _publicKey = dict[@"publicKey"];
        
        _messageCode = dict[@"messageCode"];
        
        _signedDataBase64 = dict[@"signedDataBase64"];
        
        
        
        id fortressAccessToken_dict = dict[@"fortressAccessToken"];
        
        if(fortressAccessToken_dict != nil)
            _fortressAccessToken = [[MSFortressAccessToken  alloc]initWithValues:fortressAccessToken_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_signatureCode != nil) dict[@"signatureCode"] = _signatureCode ;
        
    
    
            if(_publicKey != nil) dict[@"publicKey"] = _publicKey ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_signedDataBase64 != nil) dict[@"signedDataBase64"] = _signedDataBase64 ;
        
    
    
    if(_fortressAccessToken != nil){
        if([_fortressAccessToken isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_fortressAccessToken count] ; i++ ) {
				MSFortressAccessToken *fortressAccessToken = [[MSFortressAccessToken alloc]init];
				fortressAccessToken = [(NSArray*)_fortressAccessToken objectAtIndex:i];
                [array addObject:[(SWGObject*)fortressAccessToken asDictionary]];
            }
            dict[@"fortressAccessToken"] = array;
        }
        else if(_fortressAccessToken && [_fortressAccessToken isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_fortressAccessToken toString];
            if(dateString){
                dict[@"fortressAccessToken"] = dateString;
            }
        }
        else {
        
            if(_fortressAccessToken != nil) dict[@"fortressAccessToken"] = [(SWGObject*)_fortressAccessToken asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

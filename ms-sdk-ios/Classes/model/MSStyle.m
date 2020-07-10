#import "SWGDate.h"
#import "MSStyle.h"

@implementation MSStyle

@synthesize emailTemplateActionFile = _emailTemplateActionFile;
@synthesize emailTemplateFile = _emailTemplateFile;
@synthesize styleFile = _styleFile;
@synthesize smsImage = _smsImage;
@synthesize mailImage = _mailImage;
@synthesize checkImage = _checkImage;
@synthesize fingerprintImage = _fingerprintImage;
@synthesize identicaImage = _identicaImage;
@synthesize questionImage = _questionImage;
@synthesize jsonStyleFile = _jsonStyleFile;

-(id)emailTemplateActionFile: (NSString*) emailTemplateActionFile
    emailTemplateFile: (NSString*) emailTemplateFile
    styleFile: (NSString*) styleFile
    smsImage: (NSString*) smsImage
    mailImage: (NSString*) mailImage
    checkImage: (NSString*) checkImage
    fingerprintImage: (NSString*) fingerprintImage
    identicaImage: (NSString*) identicaImage
    questionImage: (NSString*) questionImage
    jsonStyleFile: (NSString*) jsonStyleFile
    
{
    _emailTemplateActionFile = emailTemplateActionFile;
    _emailTemplateFile = emailTemplateFile;
    _styleFile = styleFile;
    _smsImage = smsImage;
    _mailImage = mailImage;
    _checkImage = checkImage;
    _fingerprintImage = fingerprintImage;
    _identicaImage = identicaImage;
    _questionImage = questionImage;
    _jsonStyleFile = jsonStyleFile;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _emailTemplateActionFile = dict[@"emailTemplateActionFile"];
        
        _emailTemplateFile = dict[@"emailTemplateFile"];
        
        _styleFile = dict[@"styleFile"];
        
        _smsImage = dict[@"smsImage"];
        
        _mailImage = dict[@"mailImage"];
        
        _checkImage = dict[@"checkImage"];
        
        _fingerprintImage = dict[@"fingerprintImage"];
        
        _identicaImage = dict[@"identicaImage"];
        
        _questionImage = dict[@"questionImage"];
        
        _jsonStyleFile = dict[@"jsonStyleFile"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_emailTemplateActionFile != nil) dict[@"emailTemplateActionFile"] = _emailTemplateActionFile ;
        
    
    
            if(_emailTemplateFile != nil) dict[@"emailTemplateFile"] = _emailTemplateFile ;
        
    
    
            if(_styleFile != nil) dict[@"styleFile"] = _styleFile ;
        
    
    
            if(_smsImage != nil) dict[@"smsImage"] = _smsImage ;
        
    
    
            if(_mailImage != nil) dict[@"mailImage"] = _mailImage ;
        
    
    
            if(_checkImage != nil) dict[@"checkImage"] = _checkImage ;
        
    
    
            if(_fingerprintImage != nil) dict[@"fingerprintImage"] = _fingerprintImage ;
        
    
    
            if(_identicaImage != nil) dict[@"identicaImage"] = _identicaImage ;
        
    
    
            if(_questionImage != nil) dict[@"questionImage"] = _questionImage ;
        
    
    
            if(_jsonStyleFile != nil) dict[@"jsonStyleFile"] = _jsonStyleFile ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

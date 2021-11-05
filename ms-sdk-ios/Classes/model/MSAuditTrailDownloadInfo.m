#import "SWGDate.h"
#import "MSAuditTrailDownloadInfo.h"

@implementation MSAuditTrailDownloadInfo

@synthesize buttonTitle = _buttonTitle;
@synthesize buttonColor = _buttonColor;
@synthesize url = _url;

-(id)buttonTitle: (NSString*) buttonTitle
    buttonColor: (NSString*) buttonColor
    url: (NSString*) url
    
{
    _buttonTitle = buttonTitle;
    _buttonColor = buttonColor;
    _url = url;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _buttonTitle = dict[@"buttonTitle"];
        
        _buttonColor = dict[@"buttonColor"];
        
        _url = dict[@"url"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_buttonTitle != nil) dict[@"buttonTitle"] = _buttonTitle ;
        
    
    
            if(_buttonColor != nil) dict[@"buttonColor"] = _buttonColor ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

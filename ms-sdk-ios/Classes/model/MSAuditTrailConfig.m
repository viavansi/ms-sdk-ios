#import "SWGDate.h"
#import "MSAuditTrailConfig.h"

@implementation MSAuditTrailConfig

@synthesize locale = _locale;
@synthesize timeZone = _timeZone;
@synthesize addPdfLinks = _addPdfLinks;
@synthesize signPDF = _signPDF;

-(id)locale: (NSString*) locale
    timeZone: (NSString*) timeZone
    addPdfLinks: (NSNumber*) addPdfLinks
    signPDF: (NSNumber*) signPDF
    
{
    _locale = locale;
    _timeZone = timeZone;
    _addPdfLinks = addPdfLinks;
    _signPDF = signPDF;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _locale = dict[@"locale"];
        
        _timeZone = dict[@"timeZone"];
        
        _addPdfLinks = dict[@"addPdfLinks"];
        
        _signPDF = dict[@"signPDF"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_locale != nil) dict[@"locale"] = _locale ;
        
    
    
            if(_timeZone != nil) dict[@"timeZone"] = _timeZone ;
        
    
    
            if(_addPdfLinks != nil) dict[@"addPdfLinks"] = _addPdfLinks ;
        
    
    
            if(_signPDF != nil) dict[@"signPDF"] = _signPDF ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

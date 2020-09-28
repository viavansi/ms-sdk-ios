#import "SWGDate.h"
#import "MSAuditTrailTableRow.h"

@implementation MSAuditTrailTableRow

@synthesize column1Value = _column1Value;
@synthesize column2Value = _column2Value;
@synthesize column3Value = _column3Value;
@synthesize includePDFLink = _includePDFLink;
@synthesize pdfLinkURL = _pdfLinkURL;
@synthesize includeModalPopup = _includeModalPopup;

-(id)column1Value: (NSString*) column1Value
    column2Value: (NSString*) column2Value
    column3Value: (NSString*) column3Value
    includePDFLink: (NSNumber*) includePDFLink
    pdfLinkURL: (NSString*) pdfLinkURL
    includeModalPopup: (NSNumber*) includeModalPopup
    
{
    _column1Value = column1Value;
    _column2Value = column2Value;
    _column3Value = column3Value;
    _includePDFLink = includePDFLink;
    _pdfLinkURL = pdfLinkURL;
    _includeModalPopup = includeModalPopup;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _column1Value = dict[@"column1Value"];
        
        _column2Value = dict[@"column2Value"];
        
        _column3Value = dict[@"column3Value"];
        
        _includePDFLink = dict[@"includePDFLink"];
        
        _pdfLinkURL = dict[@"pdfLinkURL"];
        
        _includeModalPopup = dict[@"includeModalPopup"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_column1Value != nil) dict[@"column1Value"] = _column1Value ;
        
    
    
            if(_column2Value != nil) dict[@"column2Value"] = _column2Value ;
        
    
    
            if(_column3Value != nil) dict[@"column3Value"] = _column3Value ;
        
    
    
            if(_includePDFLink != nil) dict[@"includePDFLink"] = _includePDFLink ;
        
    
    
            if(_pdfLinkURL != nil) dict[@"pdfLinkURL"] = _pdfLinkURL ;
        
    
    
            if(_includeModalPopup != nil) dict[@"includeModalPopup"] = _includeModalPopup ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

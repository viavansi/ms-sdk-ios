#import "SWGDate.h"
#import "MSAuditTrailFooter.h"

@implementation MSAuditTrailFooter

@synthesize initialText = _initialText;
@synthesize footerLogo = _footerLogo;
@synthesize highlightedText = _highlightedText;
@synthesize includePermalink = _includePermalink;
@synthesize auditTrailPDFDocumentPermalinkURL = _auditTrailPDFDocumentPermalinkURL;
@synthesize includeQR = _includeQR;
@synthesize issuerInfo = _issuerInfo;
@synthesize issuerExtraInfo = _issuerExtraInfo;

-(id)initialText: (NSString*) initialText
    footerLogo: (MSAuditTrailImage*) footerLogo
    highlightedText: (NSString*) highlightedText
    includePermalink: (NSNumber*) includePermalink
    auditTrailPDFDocumentPermalinkURL: (NSString*) auditTrailPDFDocumentPermalinkURL
    includeQR: (NSNumber*) includeQR
    issuerInfo: (NSString*) issuerInfo
    issuerExtraInfo: (NSString*) issuerExtraInfo
    
{
    _initialText = initialText;
    _footerLogo = footerLogo;
    _highlightedText = highlightedText;
    _includePermalink = includePermalink;
    _auditTrailPDFDocumentPermalinkURL = auditTrailPDFDocumentPermalinkURL;
    _includeQR = includeQR;
    _issuerInfo = issuerInfo;
    _issuerExtraInfo = issuerExtraInfo;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _initialText = dict[@"initialText"];
        
        
        
        id footerLogo_dict = dict[@"footerLogo"];
        
        if(footerLogo_dict != nil)
            _footerLogo = [[MSAuditTrailImage  alloc]initWithValues:footerLogo_dict];
        
        
        _highlightedText = dict[@"highlightedText"];
        
        _includePermalink = dict[@"includePermalink"];
        
        _auditTrailPDFDocumentPermalinkURL = dict[@"auditTrailPDFDocumentPermalinkURL"];
        
        _includeQR = dict[@"includeQR"];
        
        _issuerInfo = dict[@"issuerInfo"];
        
        _issuerExtraInfo = dict[@"issuerExtraInfo"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_initialText != nil) dict[@"initialText"] = _initialText ;
        
    
    
    if(_footerLogo != nil){
        if([_footerLogo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_footerLogo count] ; i++ ) {
				MSAuditTrailImage *footerLogo = [[MSAuditTrailImage alloc]init];
				footerLogo = [(NSArray*)_footerLogo objectAtIndex:i];
                [array addObject:[(SWGObject*)footerLogo asDictionary]];
            }
            dict[@"footerLogo"] = array;
        }
        else if(_footerLogo && [_footerLogo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_footerLogo toString];
            if(dateString){
                dict[@"footerLogo"] = dateString;
            }
        }
        else {
        
            if(_footerLogo != nil) dict[@"footerLogo"] = [(SWGObject*)_footerLogo asDictionary];
        
        }
    }
    
    
    
            if(_highlightedText != nil) dict[@"highlightedText"] = _highlightedText ;
        
    
    
            if(_includePermalink != nil) dict[@"includePermalink"] = _includePermalink ;
        
    
    
            if(_auditTrailPDFDocumentPermalinkURL != nil) dict[@"auditTrailPDFDocumentPermalinkURL"] = _auditTrailPDFDocumentPermalinkURL ;
        
    
    
            if(_includeQR != nil) dict[@"includeQR"] = _includeQR ;
        
    
    
            if(_issuerInfo != nil) dict[@"issuerInfo"] = _issuerInfo ;
        
    
    
            if(_issuerExtraInfo != nil) dict[@"issuerExtraInfo"] = _issuerExtraInfo ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

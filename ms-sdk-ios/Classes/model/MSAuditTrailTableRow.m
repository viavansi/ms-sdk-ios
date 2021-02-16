#import "SWGDate.h"
#import "MSAuditTrailTableRow.h"

@implementation MSAuditTrailTableRow

@synthesize column1Value = _column1Value;
@synthesize column2Value = _column2Value;
@synthesize column3Value = _column3Value;
@synthesize includePDFLink = _includePDFLink;
@synthesize pdfLinkURL = _pdfLinkURL;
@synthesize includeModalPopup = _includeModalPopup;
@synthesize labelValueInfoList = _labelValueInfoList;

-(id)column1Value: (NSString*) column1Value
    column2Value: (NSString*) column2Value
    column3Value: (NSString*) column3Value
    includePDFLink: (NSNumber*) includePDFLink
    pdfLinkURL: (NSString*) pdfLinkURL
    includeModalPopup: (NSNumber*) includeModalPopup
    labelValueInfoList: (NSArray*) labelValueInfoList
    
{
    _column1Value = column1Value;
    _column2Value = column2Value;
    _column3Value = column3Value;
    _includePDFLink = includePDFLink;
    _pdfLinkURL = pdfLinkURL;
    _includeModalPopup = includeModalPopup;
    _labelValueInfoList = labelValueInfoList;
    

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
        
        
        
        id labelValueInfoList_dict = dict[@"labelValueInfoList"];
        
        if([labelValueInfoList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)labelValueInfoList_dict count]];
            if([(NSArray*)labelValueInfoList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)labelValueInfoList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[labelValueInfoList_dict objectAtIndex:i]];
                    MSAuditTrailLabelValueInfo* d = [[MSAuditTrailLabelValueInfo alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _labelValueInfoList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _labelValueInfoList = [[NSArray alloc] init];
        }
        else {
            _labelValueInfoList = [[NSArray alloc] init];
        }
        
        
        
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
        
    
    
    if(_labelValueInfoList != nil){
        if([_labelValueInfoList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_labelValueInfoList count] ; i++ ) {
				MSAuditTrailLabelValueInfo *labelValueInfoList = [[MSAuditTrailLabelValueInfo alloc]init];
				labelValueInfoList = [(NSArray*)_labelValueInfoList objectAtIndex:i];
                [array addObject:[(SWGObject*)labelValueInfoList asDictionary]];
            }
            dict[@"labelValueInfoList"] = array;
        }
        else if(_labelValueInfoList && [_labelValueInfoList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_labelValueInfoList toString];
            if(dateString){
                dict[@"labelValueInfoList"] = dateString;
            }
        }
        else {
        
            if(_labelValueInfoList != nil) dict[@"labelValueInfoList"] = [(SWGObject*)_labelValueInfoList asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

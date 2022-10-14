#import "SWGDate.h"
#import "MSDocument.h"

@implementation MSDocument

@synthesize templateCode = _templateCode;
@synthesize templateReference = _templateReference;
@synthesize templateVersion = _templateVersion;
@synthesize draftedCode = _draftedCode;
@synthesize draftedReference = _draftedReference;
@synthesize signedCode = _signedCode;
@synthesize signedID = _signedID;
@synthesize signedReference = _signedReference;
@synthesize signingDate = _signingDate;
@synthesize templateType = _templateType;
@synthesize formRequired = _formRequired;
@synthesize formDisabled = _formDisabled;
@synthesize formRecipientKey = _formRecipientKey;
@synthesize items = _items;
@synthesize pdfaCompliant = _pdfaCompliant;
@synthesize font = _font;
@synthesize policyCode = _policyCode;
@synthesize password = _password;
@synthesize readRequired = _readRequired;
@synthesize numPages = _numPages;
@synthesize allowResend = _allowResend;
@synthesize autoFinalize = _autoFinalize;
@synthesize deleteSignedDocuments = _deleteSignedDocuments;
@synthesize watermarkText = _watermarkText;
@synthesize extraPages = _extraPages;
@synthesize formUpdated = _formUpdated;
@synthesize hideDocumentBeforeStart = _hideDocumentBeforeStart;
@synthesize custodyDays = _custodyDays;
@synthesize signedHash = _signedHash;
@synthesize hashContent = _hashContent;

-(id)templateCode: (NSString*) templateCode
    templateReference: (NSString*) templateReference
    templateVersion: (NSNumber*) templateVersion
    draftedCode: (NSString*) draftedCode
    draftedReference: (NSString*) draftedReference
    signedCode: (NSString*) signedCode
    signedID: (NSString*) signedID
    signedReference: (NSString*) signedReference
    signingDate: (SWGDate*) signingDate
    templateType: (NSString*) templateType
    formRequired: (NSNumber*) formRequired
    formDisabled: (NSNumber*) formDisabled
    formRecipientKey: (NSString*) formRecipientKey
    items: (NSArray*) items
    pdfaCompliant: (NSNumber*) pdfaCompliant
    font: (MSFont*) font
    policyCode: (NSString*) policyCode
    password: (NSString*) password
    readRequired: (NSNumber*) readRequired
    numPages: (NSNumber*) numPages
    allowResend: (NSNumber*) allowResend
    autoFinalize: (NSNumber*) autoFinalize
    deleteSignedDocuments: (NSNumber*) deleteSignedDocuments
    watermarkText: (NSString*) watermarkText
    extraPages: (NSNumber*) extraPages
    formUpdated: (NSNumber*) formUpdated
    hideDocumentBeforeStart: (NSNumber*) hideDocumentBeforeStart
    custodyDays: (NSNumber*) custodyDays
    signedHash: (NSString*) signedHash
    hashContent: (NSString*) hashContent
    
{
    _templateCode = templateCode;
    _templateReference = templateReference;
    _templateVersion = templateVersion;
    _draftedCode = draftedCode;
    _draftedReference = draftedReference;
    _signedCode = signedCode;
    _signedID = signedID;
    _signedReference = signedReference;
    _signingDate = signingDate;
    _templateType = templateType;
    _formRequired = formRequired;
    _formDisabled = formDisabled;
    _formRecipientKey = formRecipientKey;
    _items = items;
    _pdfaCompliant = pdfaCompliant;
    _font = font;
    _policyCode = policyCode;
    _password = password;
    _readRequired = readRequired;
    _numPages = numPages;
    _allowResend = allowResend;
    _autoFinalize = autoFinalize;
    _deleteSignedDocuments = deleteSignedDocuments;
    _watermarkText = watermarkText;
    _extraPages = extraPages;
    _formUpdated = formUpdated;
    _hideDocumentBeforeStart = hideDocumentBeforeStart;
    _custodyDays = custodyDays;
    _signedHash = signedHash;
    _hashContent = hashContent;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _templateCode = dict[@"templateCode"];
        
        _templateReference = dict[@"templateReference"];
        
        _templateVersion = dict[@"templateVersion"];
        
        _draftedCode = dict[@"draftedCode"];
        
        _draftedReference = dict[@"draftedReference"];
        
        _signedCode = dict[@"signedCode"];
        
        _signedID = dict[@"signedID"];
        
        _signedReference = dict[@"signedReference"];
        
        
        
        id signingDate_dict = dict[@"signingDate"];
        
        if(signingDate_dict != nil)
            _signingDate = [[SWGDate  alloc]initWithValues:signingDate_dict];
        
        
        _templateType = dict[@"templateType"];
        
        _formRequired = dict[@"formRequired"];
        
        _formDisabled = dict[@"formDisabled"];
        
        _formRecipientKey = dict[@"formRecipientKey"];
        
        
        
        id items_dict = dict[@"items"];
        
        if([items_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];
            if([(NSArray*)items_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)items_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[items_dict objectAtIndex:i]];
                    MSItem* d = [[MSItem alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _items = [[NSArray alloc] initWithArray:objs];
            }
            else
                _items = [[NSArray alloc] init];
        }
        else {
            _items = [[NSArray alloc] init];
        }
        
        
        _pdfaCompliant = dict[@"pdfaCompliant"];
        
        
        
        id font_dict = dict[@"font"];
        
        if(font_dict != nil)
            _font = [[MSFont  alloc]initWithValues:font_dict];
        
        
        _policyCode = dict[@"policyCode"];
        
        _password = dict[@"password"];
        
        _readRequired = dict[@"readRequired"];
        
        _numPages = dict[@"numPages"];
        
        _allowResend = dict[@"allowResend"];
        
        _autoFinalize = dict[@"autoFinalize"];
        
        _deleteSignedDocuments = dict[@"deleteSignedDocuments"];
        
        _watermarkText = dict[@"watermarkText"];
        
        _extraPages = dict[@"extraPages"];
        
        _formUpdated = dict[@"formUpdated"];
        
        _hideDocumentBeforeStart = dict[@"hideDocumentBeforeStart"];
        
        _custodyDays = dict[@"custodyDays"];
        
        _signedHash = dict[@"signedHash"];
        
        _hashContent = dict[@"hashContent"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_templateCode != nil) dict[@"templateCode"] = _templateCode ;
        
    
    
            if(_templateReference != nil) dict[@"templateReference"] = _templateReference ;
        
    
    
            if(_templateVersion != nil) dict[@"templateVersion"] = _templateVersion ;
        
    
    
            if(_draftedCode != nil) dict[@"draftedCode"] = _draftedCode ;
        
    
    
            if(_draftedReference != nil) dict[@"draftedReference"] = _draftedReference ;
        
    
    
            if(_signedCode != nil) dict[@"signedCode"] = _signedCode ;
        
    
    
            if(_signedID != nil) dict[@"signedID"] = _signedID ;
        
    
    
            if(_signedReference != nil) dict[@"signedReference"] = _signedReference ;
        
    
    
    if(_signingDate != nil){
        if([_signingDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signingDate count] ; i++ ) {
				SWGDate *signingDate = [[SWGDate alloc]init];
				signingDate = [(NSArray*)_signingDate objectAtIndex:i];
                [array addObject:[(SWGObject*)signingDate asDictionary]];
            }
            dict[@"signingDate"] = array;
        }
        else if(_signingDate && [_signingDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signingDate toString];
            if(dateString){
                dict[@"signingDate"] = dateString;
            }
        }
        else {
        
            if(_signingDate != nil) dict[@"signingDate"] = [(SWGObject*)_signingDate asDictionary];
        
        }
    }
    
    
    
            if(_templateType != nil) dict[@"templateType"] = _templateType ;
        
    
    
            if(_formRequired != nil) dict[@"formRequired"] = _formRequired ;
        
    
    
            if(_formDisabled != nil) dict[@"formDisabled"] = _formDisabled ;
        
    
    
            if(_formRecipientKey != nil) dict[@"formRecipientKey"] = _formRecipientKey ;
        
    
    
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_items count] ; i++ ) {
				MSItem *items = [[MSItem alloc]init];
				items = [(NSArray*)_items objectAtIndex:i];
                [array addObject:[(SWGObject*)items asDictionary]];
            }
            dict[@"items"] = array;
        }
        else if(_items && [_items isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_items toString];
            if(dateString){
                dict[@"items"] = dateString;
            }
        }
        else {
        
            if(_items != nil) dict[@"items"] = [(SWGObject*)_items asDictionary];
        
        }
    }
    
    
    
            if(_pdfaCompliant != nil) dict[@"pdfaCompliant"] = _pdfaCompliant ;
        
    
    
    if(_font != nil){
        if([_font isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_font count] ; i++ ) {
				MSFont *font = [[MSFont alloc]init];
				font = [(NSArray*)_font objectAtIndex:i];
                [array addObject:[(SWGObject*)font asDictionary]];
            }
            dict[@"font"] = array;
        }
        else if(_font && [_font isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_font toString];
            if(dateString){
                dict[@"font"] = dateString;
            }
        }
        else {
        
            if(_font != nil) dict[@"font"] = [(SWGObject*)_font asDictionary];
        
        }
    }
    
    
    
            if(_policyCode != nil) dict[@"policyCode"] = _policyCode ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    
    
            if(_readRequired != nil) dict[@"readRequired"] = _readRequired ;
        
    
    
            if(_numPages != nil) dict[@"numPages"] = _numPages ;
        
    
    
            if(_allowResend != nil) dict[@"allowResend"] = _allowResend ;
        
    
    
            if(_autoFinalize != nil) dict[@"autoFinalize"] = _autoFinalize ;
        
    
    
            if(_deleteSignedDocuments != nil) dict[@"deleteSignedDocuments"] = _deleteSignedDocuments ;
        
    
    
            if(_watermarkText != nil) dict[@"watermarkText"] = _watermarkText ;
        
    
    
            if(_extraPages != nil) dict[@"extraPages"] = _extraPages ;
        
    
    
            if(_formUpdated != nil) dict[@"formUpdated"] = _formUpdated ;
        
    
    
            if(_hideDocumentBeforeStart != nil) dict[@"hideDocumentBeforeStart"] = _hideDocumentBeforeStart ;
        
    
    
            if(_custodyDays != nil) dict[@"custodyDays"] = _custodyDays ;
        
    
    
            if(_signedHash != nil) dict[@"signedHash"] = _signedHash ;
        
    
    
            if(_hashContent != nil) dict[@"hashContent"] = _hashContent ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

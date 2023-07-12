#import "SWGDate.h"
#import "MSSignaturePolicy.h"

@implementation MSSignaturePolicy

@synthesize _id = __id;
@synthesize url = _url;
@synthesize _description = __description;
@synthesize digestAlgorithm = _digestAlgorithm;
@synthesize digestValue = _digestValue;
@synthesize contentHintsDescription = _contentHintsDescription;
@synthesize contentHintsType = _contentHintsType;

-(id)_id: (NSString*) _id
    url: (NSString*) url
    _description: (NSString*) _description
    digestAlgorithm: (NSString*) digestAlgorithm
    digestValue: (NSString*) digestValue
    contentHintsDescription: (NSString*) contentHintsDescription
    contentHintsType: (NSString*) contentHintsType
    
{
    __id = _id;
    _url = url;
    __description = _description;
    _digestAlgorithm = digestAlgorithm;
    _digestValue = digestValue;
    _contentHintsDescription = contentHintsDescription;
    _contentHintsType = contentHintsType;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        _url = dict[@"url"];
        
        __description = dict[@"description"];
        
        _digestAlgorithm = dict[@"digestAlgorithm"];
        
        _digestValue = dict[@"digestValue"];
        
        _contentHintsDescription = dict[@"contentHintsDescription"];
        
        _contentHintsType = dict[@"contentHintsType"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_digestAlgorithm != nil) dict[@"digestAlgorithm"] = _digestAlgorithm ;
        
    
    
            if(_digestValue != nil) dict[@"digestValue"] = _digestValue ;
        
    
    
            if(_contentHintsDescription != nil) dict[@"contentHintsDescription"] = _contentHintsDescription ;
        
    
    
            if(_contentHintsType != nil) dict[@"contentHintsType"] = _contentHintsType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

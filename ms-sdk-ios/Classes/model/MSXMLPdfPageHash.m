#import "SWGDate.h"
#import "MSXMLPdfPageHash.h"

@implementation MSXMLPdfPageHash

@synthesize pageNum = _pageNum;
@synthesize value = _value;

-(id)pageNum: (NSNumber*) pageNum
    value: (NSString*) value
    
{
    _pageNum = pageNum;
    _value = value;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _pageNum = dict[@"pageNum"];
        
        _value = dict[@"value"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_pageNum != nil) dict[@"pageNum"] = _pageNum ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

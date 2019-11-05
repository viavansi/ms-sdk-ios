#import "SWGDate.h"
#import "MSAttachmentFile.h"

@implementation MSAttachmentFile

@synthesize fileName = _fileName;
@synthesize size = _size;

-(id)fileName: (NSString*) fileName
    size: (NSNumber*) size
    
{
    _fileName = fileName;
    _size = size;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _fileName = dict[@"fileName"];
        
        _size = dict[@"size"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_fileName != nil) dict[@"fileName"] = _fileName ;
        
    
    
            if(_size != nil) dict[@"size"] = _size ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

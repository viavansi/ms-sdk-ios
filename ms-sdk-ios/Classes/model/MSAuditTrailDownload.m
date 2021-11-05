#import "SWGDate.h"
#import "MSAuditTrailDownload.h"

@implementation MSAuditTrailDownload

@synthesize downloads = _downloads;

-(id)downloads: (NSArray*) downloads
    
{
    _downloads = downloads;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id downloads_dict = dict[@"downloads"];
        
        if([downloads_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)downloads_dict count]];
            if([(NSArray*)downloads_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)downloads_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[downloads_dict objectAtIndex:i]];
                    MSAuditTrailDownloadInfo* d = [[MSAuditTrailDownloadInfo alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _downloads = [[NSArray alloc] initWithArray:objs];
            }
            else
                _downloads = [[NSArray alloc] init];
        }
        else {
            _downloads = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_downloads != nil){
        if([_downloads isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_downloads count] ; i++ ) {
				MSAuditTrailDownloadInfo *downloads = [[MSAuditTrailDownloadInfo alloc]init];
				downloads = [(NSArray*)_downloads objectAtIndex:i];
                [array addObject:[(SWGObject*)downloads asDictionary]];
            }
            dict[@"downloads"] = array;
        }
        else if(_downloads && [_downloads isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_downloads toString];
            if(dateString){
                dict[@"downloads"] = dateString;
            }
        }
        else {
        
            if(_downloads != nil) dict[@"downloads"] = [(SWGObject*)_downloads asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

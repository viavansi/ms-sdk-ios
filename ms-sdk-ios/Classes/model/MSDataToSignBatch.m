#import "SWGDate.h"
#import "MSDataToSignBatch.h"

@implementation MSDataToSignBatch

@synthesize dataToSignList = _dataToSignList;

-(id)dataToSignList: (NSArray*) dataToSignList
    
{
    _dataToSignList = dataToSignList;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id dataToSignList_dict = dict[@"dataToSignList"];
        
        if([dataToSignList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)dataToSignList_dict count]];
            if([(NSArray*)dataToSignList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)dataToSignList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[dataToSignList_dict objectAtIndex:i]];
                    MSDataToSign* d = [[MSDataToSign alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _dataToSignList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _dataToSignList = [[NSArray alloc] init];
        }
        else {
            _dataToSignList = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_dataToSignList != nil){
        if([_dataToSignList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_dataToSignList count] ; i++ ) {
				MSDataToSign *dataToSignList = [[MSDataToSign alloc]init];
				dataToSignList = [(NSArray*)_dataToSignList objectAtIndex:i];
                [array addObject:[(SWGObject*)dataToSignList asDictionary]];
            }
            dict[@"dataToSignList"] = array;
        }
        else if(_dataToSignList && [_dataToSignList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_dataToSignList toString];
            if(dateString){
                dict[@"dataToSignList"] = dateString;
            }
        }
        else {
        
            if(_dataToSignList != nil) dict[@"dataToSignList"] = [(SWGObject*)_dataToSignList asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

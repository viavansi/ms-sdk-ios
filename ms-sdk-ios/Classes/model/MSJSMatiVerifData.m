#import "SWGDate.h"
#import "MSJSMatiVerifData.h"

@implementation MSJSMatiVerifData

@synthesize score = _score;
@synthesize data = _data;
@synthesize videoUrl = _videoUrl;
@synthesize spriteUrl = _spriteUrl;
@synthesize selfieUrl = _selfieUrl;

-(id)score: (MSNumber*) score
    data: (NSArray*) data
    videoUrl: (NSString*) videoUrl
    spriteUrl: (NSString*) spriteUrl
    selfieUrl: (NSString*) selfieUrl
    
{
    _score = score;
    _data = data;
    _videoUrl = videoUrl;
    _spriteUrl = spriteUrl;
    _selfieUrl = selfieUrl;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id score_dict = dict[@"score"];
        
        if(score_dict != nil)
            _score = [[MSNumber  alloc]initWithValues:score_dict];
        
        
        
        
        id data_dict = dict[@"data"];
        
        if([data_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)data_dict count]];
            if([(NSArray*)data_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)data_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[data_dict objectAtIndex:i]];
                    MSJSMatiVerificationFieldData* d = [[MSJSMatiVerificationFieldData alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _data = [[NSArray alloc] initWithArray:objs];
            }
            else
                _data = [[NSArray alloc] init];
        }
        else {
            _data = [[NSArray alloc] init];
        }
        
        
        _videoUrl = dict[@"videoUrl"];
        
        _spriteUrl = dict[@"spriteUrl"];
        
        _selfieUrl = dict[@"selfieUrl"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_score != nil){
        if([_score isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_score count] ; i++ ) {
				MSNumber *score = [[MSNumber alloc]init];
				score = [(NSArray*)_score objectAtIndex:i];
                [array addObject:[(SWGObject*)score asDictionary]];
            }
            dict[@"score"] = array;
        }
        else if(_score && [_score isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_score toString];
            if(dateString){
                dict[@"score"] = dateString;
            }
        }
        else {
        
            if(_score != nil) dict[@"score"] = [(SWGObject*)_score asDictionary];
        
        }
    }
    
    
    
    if(_data != nil){
        if([_data isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_data count] ; i++ ) {
				MSJSMatiVerificationFieldData *data = [[MSJSMatiVerificationFieldData alloc]init];
				data = [(NSArray*)_data objectAtIndex:i];
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        else if(_data && [_data isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_data toString];
            if(dateString){
                dict[@"data"] = dateString;
            }
        }
        else {
        
            if(_data != nil) dict[@"data"] = [(SWGObject*)_data asDictionary];
        
        }
    }
    
    
    
            if(_videoUrl != nil) dict[@"videoUrl"] = _videoUrl ;
        
    
    
            if(_spriteUrl != nil) dict[@"spriteUrl"] = _spriteUrl ;
        
    
    
            if(_selfieUrl != nil) dict[@"selfieUrl"] = _selfieUrl ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSXMLGenericEvidenceDTO.h"

@implementation MSXMLGenericEvidenceDTO

@synthesize properties = _properties;
@synthesize providerId = _providerId;
@synthesize _description = __description;
@synthesize icon = _icon;

-(id)properties: (NSArray*) properties
    providerId: (NSString*) providerId
    _description: (NSString*) _description
    icon: (NSString*) icon
    
{
    _properties = properties;
    _providerId = providerId;
    __description = _description;
    _icon = icon;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id properties_dict = dict[@"properties"];
        
        if([properties_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)properties_dict count]];
            if([(NSArray*)properties_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)properties_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[properties_dict objectAtIndex:i]];
                    MSGenericEvidencePropertyDTO* d = [[MSGenericEvidencePropertyDTO alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _properties = [[NSArray alloc] initWithArray:objs];
            }
            else
                _properties = [[NSArray alloc] init];
        }
        else {
            _properties = [[NSArray alloc] init];
        }
        
        
        _providerId = dict[@"providerId"];
        
        __description = dict[@"description"];
        
        _icon = dict[@"icon"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_properties != nil){
        if([_properties isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_properties count] ; i++ ) {
				MSGenericEvidencePropertyDTO *properties = [[MSGenericEvidencePropertyDTO alloc]init];
				properties = [(NSArray*)_properties objectAtIndex:i];
                [array addObject:[(SWGObject*)properties asDictionary]];
            }
            dict[@"properties"] = array;
        }
        else if(_properties && [_properties isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_properties toString];
            if(dateString){
                dict[@"properties"] = dateString;
            }
        }
        else {
        
            if(_properties != nil) dict[@"properties"] = [(SWGObject*)_properties asDictionary];
        
        }
    }
    
    
    
            if(_providerId != nil) dict[@"providerId"] = _providerId ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_icon != nil) dict[@"icon"] = _icon ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

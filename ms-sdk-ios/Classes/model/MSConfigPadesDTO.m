#import "SWGDate.h"
#import "MSConfigPadesDTO.h"

@implementation MSConfigPadesDTO

@synthesize stamper = _stamper;
@synthesize certificationLevel = _certificationLevel;
@synthesize password = _password;

-(id)stamper: (MSStamperDTO*) stamper
    certificationLevel: (NSString*) certificationLevel
    password: (NSString*) password
    
{
    _stamper = stamper;
    _certificationLevel = certificationLevel;
    _password = password;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id stamper_dict = dict[@"stamper"];
        
        if(stamper_dict != nil)
            _stamper = [[MSStamperDTO  alloc]initWithValues:stamper_dict];
        
        
        _certificationLevel = dict[@"certificationLevel"];
        
        _password = dict[@"password"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_stamper != nil){
        if([_stamper isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_stamper count] ; i++ ) {
				MSStamperDTO *stamper = [[MSStamperDTO alloc]init];
				stamper = [(NSArray*)_stamper objectAtIndex:i];
                [array addObject:[(SWGObject*)stamper asDictionary]];
            }
            dict[@"stamper"] = array;
        }
        else if(_stamper && [_stamper isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_stamper toString];
            if(dateString){
                dict[@"stamper"] = dateString;
            }
        }
        else {
        
            if(_stamper != nil) dict[@"stamper"] = [(SWGObject*)_stamper asDictionary];
        
        }
    }
    
    
    
            if(_certificationLevel != nil) dict[@"certificationLevel"] = _certificationLevel ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

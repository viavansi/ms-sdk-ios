#import "SWGDate.h"
#import "MSOtpList.h"

@implementation MSOtpList

@synthesize allEvidencesOTPGroup = _allEvidencesOTPGroup;
@synthesize otpGroupEvidences = _otpGroupEvidences;

-(id)allEvidencesOTPGroup: (NSNumber*) allEvidencesOTPGroup
    otpGroupEvidences: (NSArray*) otpGroupEvidences
    
{
    _allEvidencesOTPGroup = allEvidencesOTPGroup;
    _otpGroupEvidences = otpGroupEvidences;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _allEvidencesOTPGroup = dict[@"allEvidencesOTPGroup"];
        
        
        
        id otpGroupEvidences_dict = dict[@"otpGroupEvidences"];
        
        if([otpGroupEvidences_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)otpGroupEvidences_dict count]];
            if([(NSArray*)otpGroupEvidences_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)otpGroupEvidences_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[otpGroupEvidences_dict objectAtIndex:i]];
                    MSOtpInfo* d = [[MSOtpInfo alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _otpGroupEvidences = [[NSArray alloc] initWithArray:objs];
            }
            else
                _otpGroupEvidences = [[NSArray alloc] init];
        }
        else {
            _otpGroupEvidences = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_allEvidencesOTPGroup != nil) dict[@"allEvidencesOTPGroup"] = _allEvidencesOTPGroup ;
        
    
    
    if(_otpGroupEvidences != nil){
        if([_otpGroupEvidences isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_otpGroupEvidences count] ; i++ ) {
				MSOtpInfo *otpGroupEvidences = [[MSOtpInfo alloc]init];
				otpGroupEvidences = [(NSArray*)_otpGroupEvidences objectAtIndex:i];
                [array addObject:[(SWGObject*)otpGroupEvidences asDictionary]];
            }
            dict[@"otpGroupEvidences"] = array;
        }
        else if(_otpGroupEvidences && [_otpGroupEvidences isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_otpGroupEvidences toString];
            if(dateString){
                dict[@"otpGroupEvidences"] = dateString;
            }
        }
        else {
        
            if(_otpGroupEvidences != nil) dict[@"otpGroupEvidences"] = [(SWGObject*)_otpGroupEvidences asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

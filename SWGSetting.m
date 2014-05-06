#import "SWGDate.h"
#import "SWGSetting.h"

@implementation SWGSetting

-(id)titleKey: (NSString*) titleKey
    descriptionKey: (NSString*) descriptionKey
    policy: (SWGPolicy*) policy
    callbackURL: (NSString*) callbackURL
{
  _titleKey = titleKey;
  _descriptionKey = descriptionKey;
  _policy = policy;
  _callbackURL = callbackURL;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _titleKey = dict[@"titleKey"]; 
        _descriptionKey = dict[@"descriptionKey"]; 
        id policy_dict = dict[@"policy"];
        if(policy_dict != nil)
            _policy = [[SWGPolicy alloc]initWithValues:policy_dict];
        _callbackURL = dict[@"callbackURL"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_titleKey != nil) dict[@"titleKey"] = _titleKey ;
        if(_descriptionKey != nil) dict[@"descriptionKey"] = _descriptionKey ;
        if(_policy != nil){
        if([_policy isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGPolicy *policy in (NSArray*)_policy) {
                [array addObject:[(SWGObject*)policy asDictionary]];
            }
            dict[@"policy"] = array;
        }
        else if(_policy && [_policy isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_policy toString];
            if(dateString){
                dict[@"policy"] = dateString;
            }
        }
        else {
        if(_policy != nil) dict[@"policy"] = [(SWGObject*)_policy asDictionary];
        }
    }
    if(_callbackURL != nil) dict[@"callbackURL"] = _callbackURL ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


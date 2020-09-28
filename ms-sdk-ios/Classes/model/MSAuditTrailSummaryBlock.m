#import "SWGDate.h"
#import "MSAuditTrailSummaryBlock.h"

@implementation MSAuditTrailSummaryBlock

@synthesize title = _title;
@synthesize labelValueFields = _labelValueFields;
@synthesize temporalInfoFields = _temporalInfoFields;

-(id)title: (NSString*) title
    labelValueFields: (NSArray*) labelValueFields
    temporalInfoFields: (NSArray*) temporalInfoFields
    
{
    _title = title;
    _labelValueFields = labelValueFields;
    _temporalInfoFields = temporalInfoFields;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _title = dict[@"title"];
        
        
        
        id labelValueFields_dict = dict[@"labelValueFields"];
        
        if([labelValueFields_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)labelValueFields_dict count]];
            if([(NSArray*)labelValueFields_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)labelValueFields_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[labelValueFields_dict objectAtIndex:i]];
                    MSAuditTrailLabelValueInfo* d = [[MSAuditTrailLabelValueInfo alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _labelValueFields = [[NSArray alloc] initWithArray:objs];
            }
            else
                _labelValueFields = [[NSArray alloc] init];
        }
        else {
            _labelValueFields = [[NSArray alloc] init];
        }
        
        
        
        
        id temporalInfoFields_dict = dict[@"temporalInfoFields"];
        
        if([temporalInfoFields_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)temporalInfoFields_dict count]];
            if([(NSArray*)temporalInfoFields_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)temporalInfoFields_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[temporalInfoFields_dict objectAtIndex:i]];
                    MSAuditTrailTemporalInfo* d = [[MSAuditTrailTemporalInfo alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _temporalInfoFields = [[NSArray alloc] initWithArray:objs];
            }
            else
                _temporalInfoFields = [[NSArray alloc] init];
        }
        else {
            _temporalInfoFields = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
    if(_labelValueFields != nil){
        if([_labelValueFields isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_labelValueFields count] ; i++ ) {
				MSAuditTrailLabelValueInfo *labelValueFields = [[MSAuditTrailLabelValueInfo alloc]init];
				labelValueFields = [(NSArray*)_labelValueFields objectAtIndex:i];
                [array addObject:[(SWGObject*)labelValueFields asDictionary]];
            }
            dict[@"labelValueFields"] = array;
        }
        else if(_labelValueFields && [_labelValueFields isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_labelValueFields toString];
            if(dateString){
                dict[@"labelValueFields"] = dateString;
            }
        }
        else {
        
            if(_labelValueFields != nil) dict[@"labelValueFields"] = [(SWGObject*)_labelValueFields asDictionary];
        
        }
    }
    
    
    
    if(_temporalInfoFields != nil){
        if([_temporalInfoFields isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_temporalInfoFields count] ; i++ ) {
				MSAuditTrailTemporalInfo *temporalInfoFields = [[MSAuditTrailTemporalInfo alloc]init];
				temporalInfoFields = [(NSArray*)_temporalInfoFields objectAtIndex:i];
                [array addObject:[(SWGObject*)temporalInfoFields asDictionary]];
            }
            dict[@"temporalInfoFields"] = array;
        }
        else if(_temporalInfoFields && [_temporalInfoFields isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_temporalInfoFields toString];
            if(dateString){
                dict[@"temporalInfoFields"] = dateString;
            }
        }
        else {
        
            if(_temporalInfoFields != nil) dict[@"temporalInfoFields"] = [(SWGObject*)_temporalInfoFields asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

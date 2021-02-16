#import "SWGDate.h"
#import "MSAuditTrailHighlightedItem.h"

@implementation MSAuditTrailHighlightedItem

@synthesize title = _title;
@synthesize logo = _logo;
@synthesize labelValueInfoList = _labelValueInfoList;
@synthesize informationLabelList = _informationLabelList;

-(id)title: (NSString*) title
    logo: (MSAuditTrailImage*) logo
    labelValueInfoList: (NSArray*) labelValueInfoList
    informationLabelList: (NSArray*) informationLabelList
    
{
    _title = title;
    _logo = logo;
    _labelValueInfoList = labelValueInfoList;
    _informationLabelList = informationLabelList;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _title = dict[@"title"];
        
        
        
        id logo_dict = dict[@"logo"];
        
        if(logo_dict != nil)
            _logo = [[MSAuditTrailImage  alloc]initWithValues:logo_dict];
        
        
        
        
        id labelValueInfoList_dict = dict[@"labelValueInfoList"];
        
        if([labelValueInfoList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)labelValueInfoList_dict count]];
            if([(NSArray*)labelValueInfoList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)labelValueInfoList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[labelValueInfoList_dict objectAtIndex:i]];
                    MSAuditTrailLabelValueInfo* d = [[MSAuditTrailLabelValueInfo alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _labelValueInfoList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _labelValueInfoList = [[NSArray alloc] init];
        }
        else {
            _labelValueInfoList = [[NSArray alloc] init];
        }
        
        
        
        
        id informationLabelList_dict = dict[@"informationLabelList"];
        
        if([informationLabelList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)informationLabelList_dict count]];
            if([(NSArray*)informationLabelList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)informationLabelList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[informationLabelList_dict objectAtIndex:i]];
                    MSAuditTrailInformationLabel* d = [[MSAuditTrailInformationLabel alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _informationLabelList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _informationLabelList = [[NSArray alloc] init];
        }
        else {
            _informationLabelList = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
    if(_logo != nil){
        if([_logo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_logo count] ; i++ ) {
				MSAuditTrailImage *logo = [[MSAuditTrailImage alloc]init];
				logo = [(NSArray*)_logo objectAtIndex:i];
                [array addObject:[(SWGObject*)logo asDictionary]];
            }
            dict[@"logo"] = array;
        }
        else if(_logo && [_logo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_logo toString];
            if(dateString){
                dict[@"logo"] = dateString;
            }
        }
        else {
        
            if(_logo != nil) dict[@"logo"] = [(SWGObject*)_logo asDictionary];
        
        }
    }
    
    
    
    if(_labelValueInfoList != nil){
        if([_labelValueInfoList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_labelValueInfoList count] ; i++ ) {
				MSAuditTrailLabelValueInfo *labelValueInfoList = [[MSAuditTrailLabelValueInfo alloc]init];
				labelValueInfoList = [(NSArray*)_labelValueInfoList objectAtIndex:i];
                [array addObject:[(SWGObject*)labelValueInfoList asDictionary]];
            }
            dict[@"labelValueInfoList"] = array;
        }
        else if(_labelValueInfoList && [_labelValueInfoList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_labelValueInfoList toString];
            if(dateString){
                dict[@"labelValueInfoList"] = dateString;
            }
        }
        else {
        
            if(_labelValueInfoList != nil) dict[@"labelValueInfoList"] = [(SWGObject*)_labelValueInfoList asDictionary];
        
        }
    }
    
    
    
    if(_informationLabelList != nil){
        if([_informationLabelList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_informationLabelList count] ; i++ ) {
				MSAuditTrailInformationLabel *informationLabelList = [[MSAuditTrailInformationLabel alloc]init];
				informationLabelList = [(NSArray*)_informationLabelList objectAtIndex:i];
                [array addObject:[(SWGObject*)informationLabelList asDictionary]];
            }
            dict[@"informationLabelList"] = array;
        }
        else if(_informationLabelList && [_informationLabelList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_informationLabelList toString];
            if(dateString){
                dict[@"informationLabelList"] = dateString;
            }
        }
        else {
        
            if(_informationLabelList != nil) dict[@"informationLabelList"] = [(SWGObject*)_informationLabelList asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

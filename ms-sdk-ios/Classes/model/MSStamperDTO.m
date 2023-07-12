#import "SWGDate.h"
#import "MSStamperDTO.h"

@implementation MSStamperDTO

@synthesize type = _type;
@synthesize rotation = _rotation;
@synthesize width = _width;
@synthesize height = _height;
@synthesize getxAxis = _getxAxis;
@synthesize getyAxis = _getyAxis;
@synthesize page = _page;
@synthesize csvPath = _csvPath;
@synthesize csvId = _csvId;
@synthesize textLine1 = _textLine1;
@synthesize textLine2 = _textLine2;
@synthesize textLine3 = _textLine3;
@synthesize image = _image;
@synthesize logo = _logo;
@synthesize signingDate = _signingDate;
@synthesize transparent = _transparent;
@synthesize timeZone = _timeZone;
@synthesize addCsvLink = _addCsvLink;

-(id)type: (NSString*) type
    rotation: (NSString*) rotation
    width: (NSNumber*) width
    height: (NSNumber*) height
    getxAxis: (NSNumber*) getxAxis
    getyAxis: (NSNumber*) getyAxis
    page: (NSNumber*) page
    csvPath: (NSString*) csvPath
    csvId: (NSString*) csvId
    textLine1: (NSString*) textLine1
    textLine2: (NSString*) textLine2
    textLine3: (NSString*) textLine3
    image: (NSArray*) image
    logo: (NSArray*) logo
    signingDate: (SWGDate*) signingDate
    transparent: (NSNumber*) transparent
    timeZone: (MSTimeZone*) timeZone
    addCsvLink: (NSNumber*) addCsvLink
    
{
    _type = type;
    _rotation = rotation;
    _width = width;
    _height = height;
    _getxAxis = getxAxis;
    _getyAxis = getyAxis;
    _page = page;
    _csvPath = csvPath;
    _csvId = csvId;
    _textLine1 = textLine1;
    _textLine2 = textLine2;
    _textLine3 = textLine3;
    _image = image;
    _logo = logo;
    _signingDate = signingDate;
    _transparent = transparent;
    _timeZone = timeZone;
    _addCsvLink = addCsvLink;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _rotation = dict[@"rotation"];
        
        _width = dict[@"width"];
        
        _height = dict[@"height"];
        
        _getxAxis = dict[@"getxAxis"];
        
        _getyAxis = dict[@"getyAxis"];
        
        _page = dict[@"page"];
        
        _csvPath = dict[@"csvPath"];
        
        _csvId = dict[@"csvId"];
        
        _textLine1 = dict[@"textLine1"];
        
        _textLine2 = dict[@"textLine2"];
        
        _textLine3 = dict[@"textLine3"];
        
        _image = dict[@"image"];
        
        _logo = dict[@"logo"];
        
        
        
        id signingDate_dict = dict[@"signingDate"];
        
        if(signingDate_dict != nil)
            _signingDate = [[SWGDate  alloc]initWithValues:signingDate_dict];
        
        
        _transparent = dict[@"transparent"];
        
        
        
        id timeZone_dict = dict[@"timeZone"];
        
        if(timeZone_dict != nil)
            _timeZone = [[MSTimeZone  alloc]initWithValues:timeZone_dict];
        
        
        _addCsvLink = dict[@"addCsvLink"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_rotation != nil) dict[@"rotation"] = _rotation ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    
    
            if(_getxAxis != nil) dict[@"getxAxis"] = _getxAxis ;
        
    
    
            if(_getyAxis != nil) dict[@"getyAxis"] = _getyAxis ;
        
    
    
            if(_page != nil) dict[@"page"] = _page ;
        
    
    
            if(_csvPath != nil) dict[@"csvPath"] = _csvPath ;
        
    
    
            if(_csvId != nil) dict[@"csvId"] = _csvId ;
        
    
    
            if(_textLine1 != nil) dict[@"textLine1"] = _textLine1 ;
        
    
    
            if(_textLine2 != nil) dict[@"textLine2"] = _textLine2 ;
        
    
    
            if(_textLine3 != nil) dict[@"textLine3"] = _textLine3 ;
        
    
    
            if(_image != nil) dict[@"image"] = _image ;
        
    
    
            if(_logo != nil) dict[@"logo"] = _logo ;
        
    
    
    if(_signingDate != nil){
        if([_signingDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signingDate count] ; i++ ) {
				SWGDate *signingDate = [[SWGDate alloc]init];
				signingDate = [(NSArray*)_signingDate objectAtIndex:i];
                [array addObject:[(SWGObject*)signingDate asDictionary]];
            }
            dict[@"signingDate"] = array;
        }
        else if(_signingDate && [_signingDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signingDate toString];
            if(dateString){
                dict[@"signingDate"] = dateString;
            }
        }
        else {
        
            if(_signingDate != nil) dict[@"signingDate"] = [(SWGObject*)_signingDate asDictionary];
        
        }
    }
    
    
    
            if(_transparent != nil) dict[@"transparent"] = _transparent ;
        
    
    
    if(_timeZone != nil){
        if([_timeZone isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_timeZone count] ; i++ ) {
				MSTimeZone *timeZone = [[MSTimeZone alloc]init];
				timeZone = [(NSArray*)_timeZone objectAtIndex:i];
                [array addObject:[(SWGObject*)timeZone asDictionary]];
            }
            dict[@"timeZone"] = array;
        }
        else if(_timeZone && [_timeZone isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_timeZone toString];
            if(dateString){
                dict[@"timeZone"] = dateString;
            }
        }
        else {
        
            if(_timeZone != nil) dict[@"timeZone"] = [(SWGObject*)_timeZone asDictionary];
        
        }
    }
    
    
    
            if(_addCsvLink != nil) dict[@"addCsvLink"] = _addCsvLink ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

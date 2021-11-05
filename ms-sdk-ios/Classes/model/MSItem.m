#import "SWGDate.h"
#import "MSItem.h"

@implementation MSItem

@synthesize key = _key;
@synthesize value = _value;
@synthesize type = _type;
@synthesize label = _label;
@synthesize placeHolder = _placeHolder;
@synthesize size = _size;
@synthesize required = _required;
@synthesize validation = _validation;
@synthesize validationRegex = _validationRegex;
@synthesize refValues = _refValues;
@synthesize list = _list;
@synthesize nestedList = _nestedList;
@synthesize text = _text;
@synthesize href = _href;
@synthesize match = _match;
@synthesize update = _update;
@synthesize disabled = _disabled;
@synthesize hidden = _hidden;
@synthesize random = _random;
@synthesize values = _values;
@synthesize height = _height;
@synthesize format = _format;
@synthesize maxLength = _maxLength;
@synthesize minLength = _minLength;
@synthesize monthNames = _monthNames;
@synthesize dayNames = _dayNames;
@synthesize defaultCountry = _defaultCountry;
@synthesize increment = _increment;
@synthesize scanTypes = _scanTypes;
@synthesize originalValue = _originalValue;
@synthesize scanHideTextfield = _scanHideTextfield;
@synthesize scanExpression = _scanExpression;
@synthesize fillRequired = _fillRequired;
@synthesize pdfText = _pdfText;

-(id)key: (NSString*) key
    value: (NSString*) value
    type: (NSString*) type
    label: (NSString*) label
    placeHolder: (NSString*) placeHolder
    size: (NSString*) size
    required: (NSNumber*) required
    validation: (NSString*) validation
    validationRegex: (NSString*) validationRegex
    refValues: (NSString*) refValues
    list: (NSString*) list
    nestedList: (NSString*) nestedList
    text: (NSString*) text
    href: (NSString*) href
    match: (NSString*) match
    update: (NSString*) update
    disabled: (NSNumber*) disabled
    hidden: (NSNumber*) hidden
    random: (NSNumber*) random
    values: (NSArray*) values
    height: (NSString*) height
    format: (NSString*) format
    maxLength: (NSString*) maxLength
    minLength: (NSString*) minLength
    monthNames: (NSArray*) monthNames
    dayNames: (NSArray*) dayNames
    defaultCountry: (NSString*) defaultCountry
    increment: (NSNumber*) increment
    scanTypes: (NSArray*) scanTypes
    originalValue: (NSString*) originalValue
    scanHideTextfield: (NSNumber*) scanHideTextfield
    scanExpression: (NSString*) scanExpression
    fillRequired: (NSString*) fillRequired
    pdfText: (MSPdfText*) pdfText
    
{
    _key = key;
    _value = value;
    _type = type;
    _label = label;
    _placeHolder = placeHolder;
    _size = size;
    _required = required;
    _validation = validation;
    _validationRegex = validationRegex;
    _refValues = refValues;
    _list = list;
    _nestedList = nestedList;
    _text = text;
    _href = href;
    _match = match;
    _update = update;
    _disabled = disabled;
    _hidden = hidden;
    _random = random;
    _values = values;
    _height = height;
    _format = format;
    _maxLength = maxLength;
    _minLength = minLength;
    _monthNames = monthNames;
    _dayNames = dayNames;
    _defaultCountry = defaultCountry;
    _increment = increment;
    _scanTypes = scanTypes;
    _originalValue = originalValue;
    _scanHideTextfield = scanHideTextfield;
    _scanExpression = scanExpression;
    _fillRequired = fillRequired;
    _pdfText = pdfText;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _value = dict[@"value"];
        
        _type = dict[@"type"];
        
        _label = dict[@"label"];
        
        _placeHolder = dict[@"placeHolder"];
        
        _size = dict[@"size"];
        
        _required = dict[@"required"];
        
        _validation = dict[@"validation"];
        
        _validationRegex = dict[@"validationRegex"];
        
        _refValues = dict[@"refValues"];
        
        _list = dict[@"list"];
        
        _nestedList = dict[@"nestedList"];
        
        _text = dict[@"text"];
        
        _href = dict[@"href"];
        
        _match = dict[@"match"];
        
        _update = dict[@"update"];
        
        _disabled = dict[@"disabled"];
        
        _hidden = dict[@"hidden"];
        
        _random = dict[@"random"];
        
        _values = dict[@"values"];
        
        _height = dict[@"height"];
        
        _format = dict[@"format"];
        
        _maxLength = dict[@"maxLength"];
        
        _minLength = dict[@"minLength"];
        
        _monthNames = dict[@"monthNames"];
        
        _dayNames = dict[@"dayNames"];
        
        _defaultCountry = dict[@"defaultCountry"];
        
        _increment = dict[@"increment"];
        
        _scanTypes = dict[@"scanTypes"];
        
        _originalValue = dict[@"originalValue"];
        
        _scanHideTextfield = dict[@"scanHideTextfield"];
        
        _scanExpression = dict[@"scanExpression"];
        
        _fillRequired = dict[@"fillRequired"];
        
        
        
        id pdfText_dict = dict[@"pdfText"];
        
        if(pdfText_dict != nil)
            _pdfText = [[MSPdfText  alloc]initWithValues:pdfText_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_placeHolder != nil) dict[@"placeHolder"] = _placeHolder ;
        
    
    
            if(_size != nil) dict[@"size"] = _size ;
        
    
    
            if(_required != nil) dict[@"required"] = _required ;
        
    
    
            if(_validation != nil) dict[@"validation"] = _validation ;
        
    
    
            if(_validationRegex != nil) dict[@"validationRegex"] = _validationRegex ;
        
    
    
            if(_refValues != nil) dict[@"refValues"] = _refValues ;
        
    
    
            if(_list != nil) dict[@"list"] = _list ;
        
    
    
            if(_nestedList != nil) dict[@"nestedList"] = _nestedList ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    
    
            if(_href != nil) dict[@"href"] = _href ;
        
    
    
            if(_match != nil) dict[@"match"] = _match ;
        
    
    
            if(_update != nil) dict[@"update"] = _update ;
        
    
    
            if(_disabled != nil) dict[@"disabled"] = _disabled ;
        
    
    
            if(_hidden != nil) dict[@"hidden"] = _hidden ;
        
    
    
            if(_random != nil) dict[@"random"] = _random ;
        
    
    
            if(_values != nil) dict[@"values"] = _values ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    
    
            if(_maxLength != nil) dict[@"maxLength"] = _maxLength ;
        
    
    
            if(_minLength != nil) dict[@"minLength"] = _minLength ;
        
    
    
            if(_monthNames != nil) dict[@"monthNames"] = _monthNames ;
        
    
    
            if(_dayNames != nil) dict[@"dayNames"] = _dayNames ;
        
    
    
            if(_defaultCountry != nil) dict[@"defaultCountry"] = _defaultCountry ;
        
    
    
            if(_increment != nil) dict[@"increment"] = _increment ;
        
    
    
            if(_scanTypes != nil) dict[@"scanTypes"] = _scanTypes ;
        
    
    
            if(_originalValue != nil) dict[@"originalValue"] = _originalValue ;
        
    
    
            if(_scanHideTextfield != nil) dict[@"scanHideTextfield"] = _scanHideTextfield ;
        
    
    
            if(_scanExpression != nil) dict[@"scanExpression"] = _scanExpression ;
        
    
    
            if(_fillRequired != nil) dict[@"fillRequired"] = _fillRequired ;
        
    
    
    if(_pdfText != nil){
        if([_pdfText isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_pdfText count] ; i++ ) {
				MSPdfText *pdfText = [[MSPdfText alloc]init];
				pdfText = [(NSArray*)_pdfText objectAtIndex:i];
                [array addObject:[(SWGObject*)pdfText asDictionary]];
            }
            dict[@"pdfText"] = array;
        }
        else if(_pdfText && [_pdfText isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_pdfText toString];
            if(dateString){
                dict[@"pdfText"] = dateString;
            }
        }
        else {
        
            if(_pdfText != nil) dict[@"pdfText"] = [(SWGObject*)_pdfText asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

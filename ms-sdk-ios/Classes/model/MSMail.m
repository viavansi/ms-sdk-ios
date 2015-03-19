#import "SWGDate.h"
#import "MSMail.h"

@implementation MSMail

-(id)from: (MSMailConfig*) from
    fromName: (MSMailConfig*) fromName
    to: (MSMailConfig*) to
    subject: (MSMailConfig*) subject
    replyTo: (MSMailConfig*) replyTo
    cc: (MSMailConfig*) cc
    bcc: (MSMailConfig*) bcc
    text: (MSMailConfig*) text
    
{
    _from = from;
    _fromName = fromName;
    _to = to;
    _subject = subject;
    _replyTo = replyTo;
    _cc = cc;
    _bcc = bcc;
    _text = text;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id from_dict = dict[@"from"];
        
        if(from_dict != nil)
            _from = [[MSMailConfig  alloc]initWithValues:from_dict];
        
        
        
        
        id fromName_dict = dict[@"fromName"];
        
        if(fromName_dict != nil)
            _fromName = [[MSMailConfig  alloc]initWithValues:fromName_dict];
        
        
        
        
        id to_dict = dict[@"to"];
        
        if(to_dict != nil)
            _to = [[MSMailConfig  alloc]initWithValues:to_dict];
        
        
        
        
        id subject_dict = dict[@"subject"];
        
        if(subject_dict != nil)
            _subject = [[MSMailConfig  alloc]initWithValues:subject_dict];
        
        
        
        
        id replyTo_dict = dict[@"replyTo"];
        
        if(replyTo_dict != nil)
            _replyTo = [[MSMailConfig  alloc]initWithValues:replyTo_dict];
        
        
        
        
        id cc_dict = dict[@"cc"];
        
        if(cc_dict != nil)
            _cc = [[MSMailConfig  alloc]initWithValues:cc_dict];
        
        
        
        
        id bcc_dict = dict[@"bcc"];
        
        if(bcc_dict != nil)
            _bcc = [[MSMailConfig  alloc]initWithValues:bcc_dict];
        
        
        
        
        id text_dict = dict[@"text"];
        
        if(text_dict != nil)
            _text = [[MSMailConfig  alloc]initWithValues:text_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_from != nil){
        if([_from isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *from in (NSArray*)_from) {
                [array addObject:[(SWGObject*)from asDictionary]];
            }
            dict[@"from"] = array;
        }
        else if(_from && [_from isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_from toString];
            if(dateString){
                dict[@"from"] = dateString;
            }
        }
        else {
        
            if(_from != nil) dict[@"from"] = [(SWGObject*)_from asDictionary];
        
        }
    }
    
    
    
    if(_fromName != nil){
        if([_fromName isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *fromName in (NSArray*)_fromName) {
                [array addObject:[(SWGObject*)fromName asDictionary]];
            }
            dict[@"fromName"] = array;
        }
        else if(_fromName && [_fromName isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_fromName toString];
            if(dateString){
                dict[@"fromName"] = dateString;
            }
        }
        else {
        
            if(_fromName != nil) dict[@"fromName"] = [(SWGObject*)_fromName asDictionary];
        
        }
    }
    
    
    
    if(_to != nil){
        if([_to isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *to in (NSArray*)_to) {
                [array addObject:[(SWGObject*)to asDictionary]];
            }
            dict[@"to"] = array;
        }
        else if(_to && [_to isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_to toString];
            if(dateString){
                dict[@"to"] = dateString;
            }
        }
        else {
        
            if(_to != nil) dict[@"to"] = [(SWGObject*)_to asDictionary];
        
        }
    }
    
    
    
    if(_subject != nil){
        if([_subject isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *subject in (NSArray*)_subject) {
                [array addObject:[(SWGObject*)subject asDictionary]];
            }
            dict[@"subject"] = array;
        }
        else if(_subject && [_subject isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_subject toString];
            if(dateString){
                dict[@"subject"] = dateString;
            }
        }
        else {
        
            if(_subject != nil) dict[@"subject"] = [(SWGObject*)_subject asDictionary];
        
        }
    }
    
    
    
    if(_replyTo != nil){
        if([_replyTo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *replyTo in (NSArray*)_replyTo) {
                [array addObject:[(SWGObject*)replyTo asDictionary]];
            }
            dict[@"replyTo"] = array;
        }
        else if(_replyTo && [_replyTo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_replyTo toString];
            if(dateString){
                dict[@"replyTo"] = dateString;
            }
        }
        else {
        
            if(_replyTo != nil) dict[@"replyTo"] = [(SWGObject*)_replyTo asDictionary];
        
        }
    }
    
    
    
    if(_cc != nil){
        if([_cc isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *cc in (NSArray*)_cc) {
                [array addObject:[(SWGObject*)cc asDictionary]];
            }
            dict[@"cc"] = array;
        }
        else if(_cc && [_cc isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_cc toString];
            if(dateString){
                dict[@"cc"] = dateString;
            }
        }
        else {
        
            if(_cc != nil) dict[@"cc"] = [(SWGObject*)_cc asDictionary];
        
        }
    }
    
    
    
    if(_bcc != nil){
        if([_bcc isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *bcc in (NSArray*)_bcc) {
                [array addObject:[(SWGObject*)bcc asDictionary]];
            }
            dict[@"bcc"] = array;
        }
        else if(_bcc && [_bcc isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_bcc toString];
            if(dateString){
                dict[@"bcc"] = dateString;
            }
        }
        else {
        
            if(_bcc != nil) dict[@"bcc"] = [(SWGObject*)_bcc asDictionary];
        
        }
    }
    
    
    
    if(_text != nil){
        if([_text isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSMailConfig *text in (NSArray*)_text) {
                [array addObject:[(SWGObject*)text asDictionary]];
            }
            dict[@"text"] = array;
        }
        else if(_text && [_text isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_text toString];
            if(dateString){
                dict[@"text"] = dateString;
            }
        }
        else {
        
            if(_text != nil) dict[@"text"] = [(SWGObject*)_text asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

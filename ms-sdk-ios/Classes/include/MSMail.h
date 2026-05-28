#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSMailConfig.h"


@interface MSMail : SWGObject

@property(nonatomic) MSMailConfig* from;  
@property(nonatomic) MSMailConfig* fromName;  
@property(nonatomic) MSMailConfig* to;  
@property(nonatomic) MSMailConfig* subject;  
@property(nonatomic) MSMailConfig* replyTo;  
@property(nonatomic) MSMailConfig* cc;  
@property(nonatomic) MSMailConfig* bcc;  
@property(nonatomic) MSMailConfig* text;  
- (id) from: (MSMailConfig*) from     
    fromName: (MSMailConfig*) fromName     
    to: (MSMailConfig*) to     
    subject: (MSMailConfig*) subject     
    replyTo: (MSMailConfig*) replyTo     
    cc: (MSMailConfig*) cc     
    bcc: (MSMailConfig*) bcc     
    text: (MSMailConfig*) text;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

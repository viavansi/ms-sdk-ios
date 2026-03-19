#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSPublicAuthConfig : SWGObject

@property(nonatomic) NSString* token;  /* Application token  */
@property(nonatomic) NSString* apiSecurityType;  /* Authentication type required by the application  */
@property(nonatomic) NSString* apiUrl;  /* Public API base URL  */
@property(nonatomic) NSString* oauthAuthPath;  /* OAuth2 authorization endpoint path  */
@property(nonatomic) NSString* oauthTokenPath;  /* OAuth2 token endpoint path  */
@property(nonatomic) NSString* oauthAuthority;  /* OAuth2 authority (base URL of the authorization server)  */
@property(nonatomic) NSString* documentsHost;  /* Documents service host URL  */
@property(nonatomic) NSString* loginBackground;  /* Login screen background color  */
@property(nonatomic) NSNumber* loginDisabled;  /* Whether login is disabled  */
@property(nonatomic) NSString* logo;  /* Application logo filename (raw value, not a URL)  */
@property(nonatomic) NSString* mainColor;  /* Main brand color  */
@property(nonatomic) NSString* mainNegativeColor;  /* Main negative (contrast) brand color  */
@property(nonatomic) NSString* darkColor;  /* Dark brand color  */
@property(nonatomic) NSNumber* apiEditable;  /* Whether the API URL is editable by the user  */
@property(nonatomic) NSString* termsUrl;  /* Terms and conditions URL  */
@property(nonatomic) NSString* backendVersion;  /* Backend version string  */
@property(nonatomic) NSNumber* editableURL;  /* Whether the backend URL is editable (deprecated since v3.1)  */
@property(nonatomic) NSNumber* forceUpdate;  /* Whether the most recent app version requires a forced update  */
- (id) token: (NSString*) token     
    apiSecurityType: (NSString*) apiSecurityType     
    apiUrl: (NSString*) apiUrl     
    oauthAuthPath: (NSString*) oauthAuthPath     
    oauthTokenPath: (NSString*) oauthTokenPath     
    oauthAuthority: (NSString*) oauthAuthority     
    documentsHost: (NSString*) documentsHost     
    loginBackground: (NSString*) loginBackground     
    loginDisabled: (NSNumber*) loginDisabled     
    logo: (NSString*) logo     
    mainColor: (NSString*) mainColor     
    mainNegativeColor: (NSString*) mainNegativeColor     
    darkColor: (NSString*) darkColor     
    apiEditable: (NSNumber*) apiEditable     
    termsUrl: (NSString*) termsUrl     
    backendVersion: (NSString*) backendVersion     
    editableURL: (NSNumber*) editableURL     
    forceUpdate: (NSNumber*) forceUpdate;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

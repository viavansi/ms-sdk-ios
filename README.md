Mobile Services SDK iOS
==========

Cliente iOS para Mobile Services - Viafirma

Instalación
Para instalar la librería será necesario añadir en nuestro Podfile la siguiente línea:
pod 'ms-sdk-ios', :git => 'https://github.com/viavansi/ms-sdk-ios.git', :branch => 'ms-sdk-ios-2.3.x'

Petición de un token:
Este método nos servirá de ayuda para solicitar un nuevo token.

- (void) oauthTokenWithUserCode:(NSString *)userName andUserPassword:(NSString*)userPassword onSuccess:(void (^)(MSToken *response))onSuccess onError:(void (^)(NSError *error))onError {

    [MSVoauthApi requestToken:^(MSToken *response) {
        [[ApiClient sharedInstance] setToken:response.oauth_token];
        [[ApiClient sharedInstance] setTokenSecret:response.oauth_token_secret];
        [MSVoauthApi accessToken:@"client_auth"
                 x_auth_username:userName x_auth_password:userPassword
                       onSuccess:^(MSToken *response) {
                           onSuccess(response);
                       } onError:^(NSError *error) {
                           onError(error);
                       }];
    } onError:^(NSError *error) {
        onError(error);
    }];

}

El token lo obtenemos del objeto response.
Token: response.oauth_token
Token secret: response.oauth_token_secret

Ejemplos:

Buscar un usuario:

-(void) findUser:(NSString *)userCode{

    [MSVusersApi findUserByCode:userCode onSuccess:^(MSUser *response) {

        NSLog(@"User name: %@", response.name);
        NSLog(@"User surname: %@", response.surname);
        NSLog(@"User code: %@", response.code);


    } onError:^(NSError *error) {
        [self processError:error];
    }];

}

Objeto de respuesta: MSUser
@property(nonatomic) NSString* code;
@property(nonatomic) NSString* nationalId;
@property(nonatomic) NSString* email;
@property(nonatomic) NSString* password;
@property(nonatomic) NSString* name;
@property(nonatomic) NSString* surname;
@property(nonatomic) NSString* rol;
@property(nonatomic) NSString* _description;
@property(nonatomic) NSString* viafirmaKey;
@property(nonatomic) NSString* viafirmaPassword;
@property(nonatomic) NSString* viafirmaCertificate;
@property(nonatomic) NSString* region;
@property(nonatomic) NSString* pos;
@property(nonatomic) NSString* mobile;
@property(nonatomic) NSString* channel;

Buscar dispositivos de un usuario:

-(void) findUserDevice:(NSString *) userCode{

    [MSVdevicesApi findDeviceByUser:userCode onSuccess:^(NSArray *response) {
        MSDevice *testDevice = [response objectAtIndex:1];
        NSLog(@"Device name: %@", testDevice.code);
        NSLog(@"Device description: %@", [testDevice _description]);
    } onError:^(NSError *error) {
        [self processError:error];
    }];

}

Objeto de respuesta: NSArray de MSDevice
MSDevice:
@property(nonatomic) NSString* appCode;
@property(nonatomic) NSString* code;
@property(nonatomic) NSString* _description;
@property(nonatomic) NSString* locale;
@property(nonatomic) NSString* status;
@property(nonatomic) NSString* token;
@property(nonatomic) NSString* uniqueIdentifier;
@property(nonatomic) NSString* type;
@property(nonatomic) NSString* userEmail;
@property(nonatomic) NSString* userCode;
@property(nonatomic) NSString* userNationalId;


Obtener un mensaje:

-(void) getMessageByCode:(NSString*) messageCode{

    [MSVmessagesApi getMessageByCode:messageCode onSuccess:^(MSMessage *response) {
        NSLog(@"User code: %@", response.userCode);
        MSWorkflow *workflow = response.workflow;
        SWGDate *sDate = workflow.expires;
        NSLog(@"Expires: %@", sDate.date);
    } onError:^(NSError *error) {
        NSLog(@"");
    }];
}

Objeto de respuesta: MSMessage
@property(nonatomic) NSString* code;
@property(nonatomic) NSString* userCode;
@property(nonatomic) NSString* groupCode;
@property(nonatomic) NSString* appCode;
@property(nonatomic) NSString* version;
@property(nonatomic) MSWorkflow* workflow;
@property(nonatomic) MSNotification* notification;
@property(nonatomic) MSDocument* document;
@property(nonatomic) NSArray* metadataList;
@property(nonatomic) NSArray* policies;
@property(nonatomic) NSString* callbackURL;
@property(nonatomic) NSString* callbackMails;
@property(nonatomic) NSArray* callbackMailsFormKeys;
@property(nonatomic) MSErrorResponse* error;
@property(nonatomic) NSString* commentReject;

Obtener un documento:

-(void) getDocumentPreview:(NSString*) messageCode{

    [MSVdocumentsApi downloadPreview:messageCode onSuccess:^(MSDownload *response) {
        NSLog(@"");
        NSString *fileName = response.fileName;

        NSString *fileUrl = response.link;
        if ([fileUrl rangeOfString:@"bla"].location != NSNotFound) {
            fileUrl = [fileUrl stringByReplacingOccurrencesOfString:@"127.0.0.1" withString:@"192.168.1.31"];
        }

        // the URL to save
        NSURL *url = [NSURL URLWithString:fileUrl];
        // turn it into a request and use NSData to load its content
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];

        // find Documents directory and append your local filename
        NSURL *documentsURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
        documentsURL = [documentsURL URLByAppendingPathComponent:fileName];

        // and finally save the file
        [data writeToURL:documentsURL atomically:YES];

    } onError:^(NSError *error) {
        NSLog(@"");
    }];

}

Objeto de respuesta: MSDownload
@property(nonatomic) NSString* link;
@property(nonatomic) NSString* md5;
@property(nonatomic) NSString* fileName;
@property(nonatomic) SWGDate* expires;

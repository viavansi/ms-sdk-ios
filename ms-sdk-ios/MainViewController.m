//
//  MainViewController.m
//  ms-sdk-ios
//
//  Created by Jesús López on 27/2/15.
//  Copyright (c) 2015 Viafirma S.L. All rights reserved.
//

#import "MainViewController.h"
#import "ApiClient.h"
#import "MSVoauthApi.h"
#import "MSErrorResponse.h"
#import "MSVusersApi.h"
#import "MSVdevicesApi.h"
#import "MSVmessagesApi.h"
#import "MSVdocumentsApi.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	NSString *userCode = @"admin";
	NSString *userPassword = @"admin";
    NSString *messageCode = @"1427193047075R631";
	
//    [[ApiClient sharedInstance] setUrl:@"http://127.0.0.1:8080/mobile-services/api"];
    [[ApiClient sharedInstance] setUrl:@"http://192.168.1.31:8080/mobile-services/api"];
//    [[ApiClient sharedInstance] setConsumerKey:@"com.viafirma.mobile.services"];
//    [[ApiClient sharedInstance] setConsumerSecret:@"6832435885"];

    [[ApiClient sharedInstance] setConsumerKey:@"com.viafirma.mobile.ios.documents"];
    [[ApiClient sharedInstance] setConsumerSecret:@"5816437553"];
    
    [self oauthTokenWithUserCode:userCode andUserPassword:userPassword onSuccess:^(MSToken *response) {
        [[ApiClient sharedInstance] setToken:response.oauth_token];
        [[ApiClient sharedInstance] setTokenSecret:response.oauth_token_secret];
        
        [self findUser:userCode];
        [self findUserDevice:userCode];
        [self getMessageByCode:messageCode];
        [self getDocumentPreview:messageCode];
        
    } onError:^(NSError *error) {
        [self processError:error];
    }];
		
}

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

-(void) findUserDevice:(NSString *) userCode{
    
    [MSVdevicesApi findDeviceByUser:userCode onSuccess:^(NSArray *response) {
        MSDevice *testDevice = [response objectAtIndex:1];
        NSLog(@"Device name: %@", testDevice.code);
        NSLog(@"Device description: %@", [testDevice _description]);
    } onError:^(NSError *error) {
        [self processError:error];
    }];
    
}

-(void) findUser:(NSString *)userCode{
    
    [MSVusersApi findUserByCode:userCode onSuccess:^(MSUser *response) {
        
        NSLog(@"User name: %@", response.name);
        NSLog(@"User surname: %@", response.surname);
        NSLog(@"User code: %@", response.code);
        
        
    } onError:^(NSError *error) {
        [self processError:error];
    }];
    
}

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

-(void) processError:(NSError *)error{
    
    NSDictionary *reponse = [[error userInfo] objectForKey:SWGResponseObjectErrorKey];
    MSErrorResponse *response = [[MSErrorResponse alloc] initWithValues:reponse];
    NSLog(@"%@", [response message]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

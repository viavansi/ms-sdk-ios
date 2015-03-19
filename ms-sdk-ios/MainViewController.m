//
//  MainViewController.m
//  ms-sdk-ios
//
//  Created by Jesús López on 27/2/15.
//  Copyright (c) 2015 Viafirma S.L. All rights reserved.
//

#import "MainViewController.h"
#import "ApiClient.h"
#import "MSV1oauthApi.h"
#import "MSErrorResponse.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	NSString *userName = @"XXXX";
	NSString *userPassword = @"XXXX";
	
	[[ApiClient sharedInstance] setUrl:@"http://localhost/mobile-services/api"];
	[[ApiClient sharedInstance] setConsumerKey:@"com.viafirma.mobile.ios.documents"];
	[[ApiClient sharedInstance] setConsumerSecret:@"XXXX"];
	
	[MSV1oauthApi requestToken:^(MSToken *response) {
		[[ApiClient sharedInstance] setToken:response.oauth_token];
		[[ApiClient sharedInstance] setTokenSecret:response.oauth_token_secret];
		[MSV1oauthApi accessToken:@"client_auth"
				  x_auth_username:userName x_auth_password:userPassword
						onSuccess:^(MSToken *response) {
							[[ApiClient sharedInstance] setToken:response.oauth_token];
							[[ApiClient sharedInstance] setTokenSecret:response.oauth_token_secret];
		} onError:^(NSError *error) {
			NSDictionary *reponse = [[error userInfo] objectForKey:SWGResponseObjectErrorKey];
			MSErrorResponse *response = [[MSErrorResponse alloc] initWithValues:reponse];
			NSLog(@"%@", [response message]);
		}];
	} onError:^(NSError *error) {
		NSLog(@"%@", error.userInfo);
	}];
		
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

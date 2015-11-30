//
//  CommObj.m
//  BreweryDBClient
//

#import "CommObj.h"

@implementation CommObj

#pragma mark - Methods

- (NSData *)sendRequestToURL:(NSString *)stringURL forRequestType:(NSString *)requestType
{
	serverURL = [NSURL URLWithString:stringURL];
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:serverURL];
	[request setTimeoutInterval:10];
	[request setHTTPMethod:requestType];
	[request addValue:@"application/json" forHTTPHeaderField:@"accept"];
	
	NSURLResponse *response;
	NSError *err;
	
	NSData *respData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
	
	if (!err)
	{
		return respData;
	}
	else
	{
		return nil;
	}
}

@end

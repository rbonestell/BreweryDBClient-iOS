//
//  CommObj.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>

@interface CommObj : NSObject
{
    NSURL *serverURL;
	NSString *apiKey;
    NSMutableData *serverResponse;
    int httpResponseCode;
	NSError *commError;
}

- (NSData *)sendRequestToURL:(NSString *)stringURL forRequestType:(NSString *)requestType;

@end

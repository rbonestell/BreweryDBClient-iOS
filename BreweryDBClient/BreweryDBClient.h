//
//  BreweryDBClient.h
//  BreweryDBClient
//

#import <Foundation/Foundation.h>
#import "BreweryDBRequest.h"
#import "BreweryDBResponse.h"
#import "CommObj.h"


@interface BreweryDBClient : NSObject
{
	NSString *breweryDBURL;
	NSString *apiKey;
	BOOL respReceived;
	NSData *resp;
}

- (id) initWithAPIKey:(NSString *)key;
- (BreweryDBResponse *) sendRequest:(BreweryDBRequest *)bdbRequest;

@end

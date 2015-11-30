//
//  BreweryDBClient.m
//  BreweryDBClient
//

#import "BreweryDBClient.h"

@implementation BreweryDBClient

- (id)initWithAPIKey:(NSString *)key
{
	if (self = [super init])
	{
		breweryDBURL = @"https://api.brewerydb.com/v2/";
		apiKey = key;
	}
    return self;
}

- (BreweryDBResponse *)responseReceived:(NSData *)response forRequest:(BreweryDBRequest *)req
{
	resp = response;
	BreweryDBResponse *bdbResp;
	NSError *e = nil;
	NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:resp options:NSJSONReadingMutableContainers error:&e];
	
	if (!jsonArray)
		NSLog(@"Error parsing JSON: %@", e);
	else
	{
		bdbResp = [[BreweryDBResponse alloc] initWithArray:jsonArray forEndPoint:req.getEndpoint];
		if (bdbResp.currentPage < bdbResp.numberOfPages)
		{
			[req setRequestPage:[NSString stringWithFormat:@"%d", (bdbResp.currentPage + 1)]];
			[bdbResp mergeResponse:[self sendRequest:req]];
		}
	}
	return bdbResp;
}

- (BreweryDBResponse *)sendRequest:(BreweryDBRequest *)bdbRequest
{
	CommObj *comm = [[CommObj alloc] init];
	NSData *respData = [comm sendRequestToURL:[self buildURLForRequest:bdbRequest] forRequestType:@"GET"];
	if (respData)
		return [self responseReceived:respData forRequest:bdbRequest];
	else
		return nil;
}

- (NSString *)buildURLForRequest:(BreweryDBRequest *)bdbRequest
{
	NSString *ep = @"";
	switch (bdbRequest.getEndpoint)
	{
		case LOCATIONS:
			ep = @"search/geo/point";
			break;
			
		case CITYSTATE:
			ep = @"locations";
			break;
			
		case BEERS:
			ep = [NSString stringWithFormat:@"brewery/%@/beers", bdbRequest.breweryID];
			break;
			
		case BEERUPC:
			ep = @"search/upc";
			break;
			
		default:
			break;
	}

	return [NSString stringWithFormat:@"%@%@%@", breweryDBURL, ep, [self buildQueryString:bdbRequest.getParameters]];
}


- (NSString *)buildQueryString:(NSDictionary *)requestParams
{
	NSMutableString *queryString = [NSMutableString stringWithFormat:@"?key=%@", apiKey];
    if ((requestParams) && (requestParams.count > 0))
		for (NSString *key in requestParams)
			[queryString appendFormat:@"&%@=%@", key, [requestParams objectForKey:key]];
	return queryString;
}

@end

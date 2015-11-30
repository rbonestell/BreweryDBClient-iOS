//
//  BreweryDBRequest.m
//  BreweryDBClient
//

#import "BreweryDBRequest.h"

@implementation BreweryDBRequest

#pragma mark - Properties

@synthesize breweryID = _breweryID;
@synthesize targetEndPoint = _targetEndPoint;

#pragma mark - Instance Methods

- (id)init
{
	if (self = [super init])
	{
		parameters = [[NSMutableDictionary alloc] init];
	}
    return self;
}

- (EndPoint) getEndpoint
{
	return _targetEndPoint;
}

- (NSDictionary *) getParameters
{
	return parameters;
}

- (void) setRequestPage:(NSString *)pageNo
{
	[self setParameter:@"p" toValue:pageNo];
}

#pragma mark - Static Factory Methods

+ (BreweryDBRequest *) getRequestLocationsForCity:(NSString *)city andState:(NSString *)state
{
	BreweryDBRequest *req = [[BreweryDBRequest alloc] init];
	[req setTargetEndPoint:CITYSTATE];
	[req setParameter:@"locality" toValue:city];
	[req setParameter:@"region" toValue:state];
	[req setParameter:@"order" toValue:@"breweryName"];
	[req setParameter:@"openToPublic" toValue:@"Y"];
	return req;
}

+ (BreweryDBRequest *) getRequestLocationsSearchByLat:(NSString *)lat Lon:(NSString *)lng forRadius:(NSString *)radius
{
	BreweryDBRequest *req = [[BreweryDBRequest alloc] init];
	[req setTargetEndPoint:LOCATIONS];
	[req setParameter:@"lat" toValue:lat];
	[req setParameter:@"lng" toValue:lng];
	[req setParameter:@"radius" toValue:radius];
	[req setParameter:@"openToPublic" toValue:@"Y"];
	return req;
}

+ (BreweryDBRequest *) getRequestBeerByBrewery:(NSString *)bID
{
	BreweryDBRequest *req = [[BreweryDBRequest alloc] init];
	[req setTargetEndPoint:BEERS];
	[req setBreweryID:bID];
	return req;
}

#pragma mark - Private Instance Methods

- (void) setParameter:(NSString *)key toValue:(NSString *)value
{
	[parameters setValue:value forKey:key];
}

@end
